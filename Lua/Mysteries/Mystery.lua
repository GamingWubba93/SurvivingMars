DefineClass.MysteryBase = { --data holder for mysteries
	__parents = {"InitDone"},
	city = false,
	
	scenario_name = false,
	seq_player = false,
	
	display_name = "",
	rollover_text = "",
	challenge_mod = 0,
	
	--mystery resource properties
	resource_display_name = T{8064, "Mystery Resource"}, 
	resource_display_icon = "UI/Icons/Buildings/res_mystery_resource.tga",
	resource_tag_icon = "UI/Icons/res_mystery_resource.tga",
	resource_unit_amount = const.ResourceScale, 
	resource_color = RGB(0, 255, 0), 
	resource_entity = "ResourceMystery", 
	resource_description = T{8065, "Mystery Resource Description"},
	
	depot_display_name = T{8112, --[[BuildingTemplate StorageMysteryResource display_name]] "Mystery Depot"},
	depot_display_name_pl = T{8112, --[[BuildingTemplate StorageMysteryResource display_name_pl]] "Mystery Depot"},
	depot_description = T{8113, --[[BuildingTemplate StorageMysteryResource description]] "It's very mysterious."},
	
	order_pos = 0,
	dlc = false,
}

local resource_props_helper = {"resource_display_name", "display_name",
										"resource_display_icon", "display_icon",
										"resource_unit_amount",  "unit_amount",
										"resource_color",        "color",
										"resource_entity",       "entity", 
										"resource_description",  "description", }

function MysteryBase:ApplyMysteryResourceProperties()
	local r_desc = Resources.MysteryResource
	for i = 1, #resource_props_helper, 2 do
		r_desc[resource_props_helper[i + 1]] = self[resource_props_helper[i]]
	end
	
	const.TagLookupTable["icon_MysteryResource"] = string.format("<image %s 1300>", self.resource_tag_icon)
	const.TagLookupTable["icon_MysteryResource_small"] = string.format("<image %s 800>", self.resource_tag_icon)
	
	CalcSingleResGroupEntity(r_desc)
end

function MysteryBase:Init()
	self.city = self.city or UICity
	self.city:SetMystery(self)
	
	--init mystery resource
	self:ApplyMysteryResourceProperties()
	
	--init sequence player
	if self.scenario_name then
		local seq_list = DataInstances.Scenario[self.scenario_name]
		if not seq_list then
			printf("Mystery %s references missing scenario %s", self.class, self.scenario_name)
			return
		end
		assert(seq_list, "Sequence, " .. self.scenario_name .. " not found!")
		self.seq_player = CreateSequenceListPlayer(seq_list)
		self.seq_player:AutostartSequences()
	else
		print("Mystery, " .. self.class .. ", has no scenario set (sequence action)!")
	end
end

function City:SelectMystery()
	local mystery = g_CurrentMissionParams.idMystery or "none"
	if not mapdata.GameLogic
		or not mapdata.StartMystery
		or mapdata.MapType == "system"
	then
		return
	end
	
	if mystery == "random" then
		local mysteries = ClassDescendantsList("MysteryBase")
		local filtered = {}
		local played_mysteries = AccountStorage.PlayedMysteries
		for i = #mysteries, 1, -1 do
			local name = mysteries[i]
			if not Platform.developer and not IsDlcAvailable(g_Classes[name].dlc) then
				table.remove(mysteries, i)
			elseif not played_mysteries or not played_mysteries[name] then
				filtered[#filtered + 1] = name
			end
		end
		if #filtered > 0 then
			mystery = self:TableRand(filtered)
		else
			mystery = self:TableRand(mysteries)
		end
	end
	if mystery ~= "none" then
		self.mystery_id = mystery
	end
end

-- fixup for older savegames
function OnMsg.LoadGame()
	if UICity.mystery then
		UICity.mystery_id = UICity.mystery.class
		--reload resource pretty desc/name
		UICity.mystery:ApplyMysteryResourceProperties()
	end
end

function OnMsg.Autorun()
	if UICity and UICity.mystery then
		--so script reload doesnt load up defaults from game const
		UICity.mystery:ApplyMysteryResourceProperties()
	end
end

function City:InitMystery()
	if self.mystery_id ~= "" then
		g_Classes[self.mystery_id]:new{city = self}
	end
	
	Msg("MysteryChosen")
end

function OnMsg.MysteryBegin()
	--mark mystery as played
	local current_mystery = UICity.mystery
	local played_mysteries = AccountStorage.PlayedMysteries or {}
	if current_mystery and not played_mysteries[current_mystery.class] then
		played_mysteries[current_mystery.class] = true
		AccountStorage.PlayedMysteries = played_mysteries
		SaveAccountStorage()
	end
end

---------------------------------------------------------------------------------------------

function CheatStartMystery(mystery_id)
	if not CheatsEnabled() or not UICity or UICity.mystery or not g_Classes[mystery_id] then
		print("failed", mystery_id)
		return
	end
	UICity.mystery_id = mystery_id
	for i=1,#TechTree do
		local field = TechTree[i]
		local field_id = field.id
		local costs = field.costs or empty_table
		local list = UICity.tech_field[field_id] or {}
		UICity.tech_field[field_id] = list
		for _, tech in ipairs(field) do
			if tech.mystery == mystery_id then
				local tech_id = tech.id
				assert(not UICity.tech_status[tech_id], "Tech already present!")
				assert(not field.discoverable, "Discoverable mystery tech?!")
				list[#list + 1] = tech_id
				UICity.tech_status[tech_id] = {
					points = 0,
					field = field_id,
				}
				tech:Initialize(UICity)
			end
		end
	end
	UICity:InitMystery()
	print("started", mystery_id)
end

function OnMsg.ClassesBuilt()
	local actions = {}
	ClassDescendantsList("MysteryBase", function (name, class)
		local scenario = class.scenario_name and (" - " .. class.scenario_name) or ""
		actions["StartMystery" .. name] = {
			description = T{8066, "Start mystery <mystery> (<scenario>)", mystery = class.display_name, },
			mode = "Game",
			menu = "Cheats/[05]Start Mystery/" .. _InternalTranslate(class.display_name) .. scenario,
			action = function() 
				CheatStartMystery(name)		
			end,
		}
	end)
	UserActions.AddActions(actions)
end

