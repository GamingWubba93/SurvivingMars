-- ========== THIS IS AN AUTOMATICALLY GENERATED FILE! ==========

PlaceObj('XTemplate', {
	__is_kind_of = "XLayer",
	group = "Layers",
	id = "DifficultyBonus",
	PlaceObj('XTemplateWindow', {
		'__context', function (parent, context) return PGDifficultyObjectCreate() end,
		'__class', "XLayer",
	}, {
		PlaceObj('XTemplateFunc', {
			'name', "OnDelete",
			'func', function (self, ...)
g_DiffBonusObj = false
end,
		}),
		PlaceObj('XTemplateWindow', {
			'Margins', box(0, 58, 0, 0),
			'Dock', "top",
			'HAlign', "center",
			'MinWidth', 300,
			'LayoutMethod', "VList",
		}, {
			PlaceObj('XTemplateFunc', {
				'name', "Open",
				'func', function (self, ...)
XWindow.Open(self, ...)
local margins = self:GetMargins()
local safe_margins = GetSafeMargins(margins)
self:SetMargins(box(margins:minx(), safe_margins:miny(), margins:maxx(), margins:maxy()))
end,
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XFrame",
				'Margins', box(-275, 0, -275, -115),
				'Image', "UI/Common/bm_pad.tga",
				'FrameBox', box(275, 0, 275, 0),
				'SqueezeY', false,
			}),
			PlaceObj('XTemplateWindow', {
				'__class', "XText",
				'HAlign', "center",
				'VAlign', "top",
				'TextFont', "PGChallengeRating",
				'TextColor', RGBA(255, 188, 59, 255),
				'RolloverTextColor', RGBA(255, 188, 59, 255),
				'Translate', true,
				'Text', T{4262, --[[XTemplate DifficultyBonus Text]] "Difficulty Bonus <white><percent(DifficultyBonus)></white>"},
			}),
			}),
		}),
})

