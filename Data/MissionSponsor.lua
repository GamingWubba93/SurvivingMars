-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('MissionSponsor', {
	'name', "IMM",
	'display_name', T{7021, --[[MissionSponsor IMM display_name]] "International Mars Mission"},
	'funding', 30000,
	'cargo', 70000,
	'initial_rockets', 4,
	'initial_techs_unlocked', 1,
	'effect', T{7022, --[[MissionSponsor IMM effect]] "Difficulty: <em>Very Easy</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Large Rocket payload (<cargo> kg)\n- Colonists never get Earthsick\n- Food supply from Passenger Rockets increased (x10)\n- Rockets synthesize Fuel\n\n<em><flavor></em>"},
	'flavor', T{7023, --[[MissionSponsor IMM flavor]] "Recommended for first-time players"},
	'goal', "MG_TechResearch",
	'goal_target', 40,
	'sponsor_nation_name1', "American",
	'sponsor_nation_percent1', 20,
	'sponsor_nation_name2', "German",
	'sponsor_nation_percent2', 5,
	'sponsor_nation_name3', "Russian",
	'sponsor_nation_percent3', 5,
	'sponsor_nation_name4', "Chinese",
	'sponsor_nation_percent4', 20,
	'sponsor_nation_name5', "Indian",
	'sponsor_nation_percent5', 20,
	'sponsor_nation_name6', "Bulgarian",
	'sponsor_nation_percent6', 5,
	'sponsor_nation_name7', "Swedish",
	'sponsor_nation_percent7', 5,
	'sponsor_nation_name8', "French",
	'sponsor_nation_percent8', 5,
	'RCRover', 1,
	'ExplorerRover', 1,
	'RCTransport', 1,
	'Drone', 6,
	'Polymers', 15,
	'MachineParts', 15,
	'Electronics', 10,
	'DroneHub', 1,
	'MoistureVaporator', 1,
	'StirlingGenerator', 2,
	'OrbitalProbe', 4,
	'additional_research_points', 200,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', 100,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "FoodPerRocketPassenger",
		'Amount', 9000,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "NASA",
	'display_name', T{1223, --[[MissionSponsor NASA display_name]] "USA"},
	'challenge_mod', 40,
	'funding', 8000,
	'cargo', 70000,
	'initial_rockets', 3,
	'initial_techs_unlocked', 1,
	'effect', T{5483, --[[MissionSponsor NASA effect]] "Difficulty: <em>Easy</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Large Rocket payload (<cargo> kg)\n- Periodic additional funding<flavor>"},
	'goal', "MG_Anomalies",
	'goal_target', 30,
	'sponsor_nation_name1', "American",
	'sponsor_nation_percent1', 90,
	'sponsor_nation_name2', "German",
	'sponsor_nation_percent2', 5,
	'sponsor_nation_name3', "English",
	'sponsor_nation_percent3', 5,
	'RCRover', 1,
	'ExplorerRover', 1,
	'RCTransport', 1,
	'Polymers', 20,
	'MachineParts', 25,
	'Electronics', 15,
	'DroneHub', 1,
	'FuelFactory', 1,
	'StirlingGenerator', 2,
	'OrbitalProbe', 2,
	'additional_research_points', 200,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "SponsorFundingPerInterval",
		'Amount', 500,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "BlueSun",
	'display_name', T{5484, --[[MissionSponsor BlueSun display_name]] "Blue Sun Corporation"},
	'challenge_mod', 50,
	'funding', 10000,
	'cargo', 50000,
	'rocket_price', 500000000,
	'applicants_price', 500000000,
	'initial_techs_unlocked', 1,
	'effect', T{5485, --[[MissionSponsor BlueSun effect]] "Difficulty: <em>Easy</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Can buy Applicants with funding\n- Additional Rockets are significantly cheaper\n- Probes can discover deep Rare Metal deposits\n- Bonus Tech: <em>Deep Metal Extraction</em> (can extract deep metals and deep rare metals deposits)"},
	'default_skin', "Facet",
	'goal', "MG_RareExport",
	'goal_target', 100,
	'sponsor_nation_name1', "American",
	'sponsor_nation_percent1', 40,
	'sponsor_nation_name2', "German",
	'sponsor_nation_percent2', 20,
	'sponsor_nation_name3', "Chinese",
	'sponsor_nation_percent3', 20,
	'sponsor_nation_name4', "French",
	'sponsor_nation_percent4', 20,
	'RCTransport', 1,
	'Drone', 6,
	'Polymers', 10,
	'MachineParts', 20,
	'Electronics', 10,
	'DroneHub', 1,
	'FuelFactory', 1,
	'OrbitalProbe', 8,
}, {
	PlaceObj('TechEffect_GrantTech', {
		'Field', "Physics",
		'Research', "DeepMetalExtraction",
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', 5,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "CNSA",
	'display_name', T{1227, --[[MissionSponsor CNSA display_name]] "China"},
	'challenge_mod', 60,
	'funding', 8000,
	'cargo', 50000,
	'initial_rockets', 3,
	'initial_techs_unlocked', 1,
	'effect', T{5486, --[[MissionSponsor CNSA effect]] "Difficulty: <em>Easy</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Passenger Rockets carry 10 additional Colonists\n- Applicants are generated twice as fast"},
	'default_skin', "Star",
	'goal', "MG_Martianborn",
	'goal_target', 80,
	'sponsor_nation_name1', "Chinese",
	'sponsor_nation_percent1', 100,
	'RCRover', 1,
	'RCTransport', 1,
	'Metals', 5,
	'Polymers', 15,
	'MachineParts', 15,
	'Electronics', 10,
	'DroneHub', 1,
	'StirlingGenerator', 1,
	'OrbitalProbe', 2,
	'additional_research_points', 100,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantGenerationInterval",
		'Percent', -50,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', 100,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "MaxColonistsPerRocket",
		'Amount', 10,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "ISRO",
	'display_name', T{1231, --[[MissionSponsor ISRO display_name]] "India"},
	'challenge_mod', 90,
	'funding', 7000,
	'cargo', 50000,
	'initial_rockets', 3,
	'initial_techs_unlocked', 1,
	'effect', T{5487, --[[MissionSponsor ISRO effect]] "Difficulty: <em>Normal</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- All building costs reduced by 20%\n- Bonus Tech: <em>Low-G Engineering</em> (unlocks Medium Dome)"},
	'default_skin', "Star",
	'goal', "MG_Colonists",
	'goal_target', 200,
	'lock_name1', "RCConstructor",
	'lock_value1', "unlocked",
	'sponsor_nation_name1', "Indian",
	'sponsor_nation_percent1', 90,
	'sponsor_nation_name2', "Chinese",
	'sponsor_nation_percent2', 5,
	'sponsor_nation_name3', "English",
	'sponsor_nation_percent3', 5,
	'RCRover', 1,
	'Polymers', 20,
	'MachineParts', 15,
	'Electronics', 10,
	'DroneHub', 2,
	'MoistureVaporator', 2,
	'OrbitalProbe', 2,
}, {
	PlaceObj('TechEffect_GrantTech', {
		'Field', "Engineering",
		'Research', "LowGEngineering",
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -1,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "Concrete_cost_modifier",
		'Percent', -20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "Electronics_cost_modifier",
		'Percent', -20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "MachineParts_cost_modifier",
		'Percent', -20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', 50,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "Metals_cost_modifier",
		'Percent', -20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "Polymers_cost_modifier",
		'Percent', -20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "PreciousMetals_cost_modifier",
		'Percent', -20,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "ESA",
	'display_name', T{5488, --[[MissionSponsor ESA display_name]] "Europe"},
	'challenge_mod', 110,
	'funding', 6000,
	'funding_per_tech', 150,
	'funding_per_breakthrough', 300,
	'cargo', 50000,
	'initial_techs_unlocked', 2,
	'effect', T{5489, --[[MissionSponsor ESA effect]] "Difficulty: <em>Normal</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- 5 extra starting technologies\n- Gain Funding every time a tech is researched. Gain double if it's a Breakthrough tech"},
	'goal', "MG_TechResearch",
	'goal_target', 40,
	'sponsor_nation_name1', "German",
	'sponsor_nation_percent1', 40,
	'sponsor_nation_name2', "French",
	'sponsor_nation_percent2', 30,
	'sponsor_nation_name3', "Swedish",
	'sponsor_nation_percent3', 20,
	'sponsor_nation_name4', "Bulgarian",
	'sponsor_nation_percent4', 10,
	'ExplorerRover', 1,
	'Drone', 6,
	'Polymers', 15,
	'MachineParts', 15,
	'Electronics', 10,
	'DroneHub', 1,
	'MoistureVaporator', 1,
	'FuelFactory', 1,
	'OrbitalProbe', 3,
	'additional_research_points', 300,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -3,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "SpaceY",
	'display_name', T{5490, --[[MissionSponsor SpaceY display_name]] "SpaceY"},
	'challenge_mod', 130,
	'funding', 6000,
	'cargo', 50000,
	'initial_rockets', 5,
	'initial_techs_unlocked', 1,
	'effect', T{5491, --[[MissionSponsor SpaceY effect]] "Difficulty: <em>Normal</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Drone Hubs start with additional Drones\n- 50% cheaper advanced resources"},
	'default_skin', "Facet",
	'goal', "MG_Colonists",
	'goal_target', 200,
	'modifier_name1', "Polymers",
	'modifier_value1', -50,
	'modifier_name2', "Electronics",
	'modifier_value2', -50,
	'modifier_name3', "MachineParts",
	'modifier_value3', -50,
	'sponsor_nation_name1', "American",
	'sponsor_nation_percent1', 80,
	'sponsor_nation_name2', "Chinese",
	'sponsor_nation_percent2', 10,
	'sponsor_nation_name3', "Russian",
	'sponsor_nation_percent3', 5,
	'sponsor_nation_name4', "French",
	'sponsor_nation_percent4', 5,
	'RCTransport', 1,
	'Drone', 4,
	'Polymers', 15,
	'MachineParts', 15,
	'Electronics', 15,
	'DroneHub', 3,
	'OrbitalProbe', 3,
	'additional_research_points', 100,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "CommandCenterMaxDrones",
		'Amount', 20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "DroneHub",
		'Prop', "starting_drones",
		'Amount', 4,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -5,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', -25,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "NewArk",
	'display_name', T{5493, --[[MissionSponsor NewArk display_name]] "Church of the New Ark"},
	'challenge_mod', 170,
	'cargo', 50000,
	'initial_rockets', 1,
	'initial_techs_unlocked', 1,
	'trait', "Religious",
	'effect', T{5494, --[[MissionSponsor NewArk effect]] "Difficulty: <em>Hard</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- All Colonists have the Religious trait\n- Birthrate is doubled\n- Hydroponic Farms performance reduced by 50 <em>(drawback)</em>"},
	'goal', "MG_Martianborn",
	'goal_target', 80,
	'sponsor_nation_name1', "American",
	'sponsor_nation_percent1', 95,
	'sponsor_nation_name2', "English",
	'sponsor_nation_percent2', 5,
	'sponsor_nation_name3', "English",
	'RCTransport', 1,
	'Drone', 8,
	'Polymers', 15,
	'MachineParts', 15,
	'Electronics', 10,
	'DroneHub', 1,
	'MoistureVaporator', 1,
	'FuelFactory', 1,
	'OrbitalProbe', 1,
	'additional_research_points', -100,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "BirthThreshold",
		'Percent', -50,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -5,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', 20,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "HydroponicFarm",
		'Prop', "performance",
		'Percent', -50,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "Roscosmos",
	'display_name', T{1226, --[[MissionSponsor Roscosmos display_name]] "Russia"},
	'challenge_mod', 180,
	'funding', 5000,
	'cargo', 50000,
	'initial_techs_unlocked', 1,
	'effect', T{5492, --[[MissionSponsor Roscosmos effect]] "Difficulty: <em>Hard</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Bonus Tech: <em>Fueled Extractors</em> (extractor upgrade that boosts production but consumes Fuel)\n- Fueled Extractors upgrade is free\n- Fuel Refinery prefab costs <percent(50)> less\n- Rockets have extended travel time <em>(drawback)</em>"},
	'default_skin', "Facet",
	'goal', "MG_RareExport",
	'goal_target', 100,
	'modifier_name1', "FuelFactory",
	'modifier_value1', -50,
	'sponsor_nation_name1', "Russian",
	'sponsor_nation_percent1', 95,
	'sponsor_nation_name2', "Bulgarian",
	'sponsor_nation_percent2', 5,
	'RCRover', 1,
	'Drone', 4,
	'Polymers', 15,
	'MachineParts', 20,
	'Electronics', 15,
	'DroneHub', 1,
	'MoistureVaporator', 1,
	'FuelFactory', 1,
	'OrbitalProbe', 1,
	'additional_research_points', 100,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "TravelTimeEarthMars",
		'Percent', 100,
	}),
	PlaceObj('TechEffect_GrantTech', {
		'Field', "Robotics",
		'Research', "FueledExtractors",
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "TravelTimeMarsEarth",
		'Percent', 100,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -3,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "paradox",
	'display_name', T{5495, --[[MissionSponsor paradox display_name]] "Paradox Interactive"},
	'challenge_mod', 200,
	'applicants_per_breakthrough', 30,
	'cargo', 50000,
	'initial_rockets', 1,
	'initial_techs_unlocked', 1,
	'anomaly_bonus_breakthrough', range(2, 4),
	'effect', T{5496, --[[MissionSponsor paradox effect]] "Difficulty: <em>Hard</em>\n\nFunding: $<funding> M\nResearch per Sol: <research(SponsorResearch)>\nRare Metals price: $<ExportPricePreciousMetals> M\nStarting Applicants: <ApplicantsPoolStartingSize>\n\n- Discover more Breakthrough Anomalies\n- Researching a Breakthrough Tech grants Applicants\n- Rockets require more fuel to launch <em>(drawback)</em>"},
	'filter', function (self) return HasParadoxSponsor() end,
	'default_skin', "Star",
	'goal', "MG_Anomalies",
	'goal_target', 30,
	'sponsor_nation_name1', "Swedish",
	'sponsor_nation_percent1', 60,
	'sponsor_nation_name2', "German",
	'sponsor_nation_percent2', 10,
	'sponsor_nation_name3', "English",
	'sponsor_nation_percent3', 20,
	'sponsor_nation_name4', "French",
	'sponsor_nation_percent4', 10,
	'RCRover', 1,
	'ExplorerRover', 1,
	'Drone', 6,
	'Polymers', 10,
	'MachineParts', 15,
	'Electronics', 5,
	'MoistureVaporator', 1,
	'FuelFactory', 1,
	'OrbitalProbe', 2,
}, {
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "AllRockets",
		'Prop', "launch_fuel",
		'Amount', 40,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ExportPricePreciousMetals",
		'Amount', -1,
	}),
	PlaceObj('TechEffect_ModifyLabel', {
		'Label', "Consts",
		'Prop', "ApplicantsPoolStartingSize",
		'Percent', -25,
	}),
	})

PlaceObj('MissionSponsor', {
	'name', "random",
	'display_name', T{3490, --[[MissionSponsor random display_name]] "Random"},
})

