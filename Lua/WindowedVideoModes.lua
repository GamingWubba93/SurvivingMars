g_WindowedVideoModes = {
	{
		Width = 1024,
		Height = 760,
		value = point(1024, 760),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1024, arg2 = 760},
		disabled_text = T{6954, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1152,
		Height = 864,
		value = point(1152, 864),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1152, arg2 = 864},
		disabled_text = T{6955, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1280,
		Height = 720,
		value = point(1280, 720),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1280, arg2 = 720},
		disabled_text = T{6956, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1280,
		Height = 768,
		value = point(1280, 768),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1280, arg2 = 768},
		disabled_text = T{6957, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1280,
		Height = 800,
		value = point(1280, 800),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1280, arg2 = 800},
		disabled_text = T{6958, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1280,
		Height = 960,
		value = point(1280, 960),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1280, arg2 = 960},
		disabled_text = T{6959, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1280,
		Height = 1024,
		value = point(1280, 1024),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1280, arg2 = 1024},
		disabled_text = T{6960, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1360,
		Height = 768,
		value = point(1360, 768),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1360, arg2 = 768},
		disabled_text = T{6961, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1366,
		Height = 768,
		value = point(1366, 768),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1366, arg2 = 768},
		disabled_text = T{6962, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1600,
		Height = 900,
		value = point(1600, 900),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1600, arg2 = 900},
		disabled_text = T{6963, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1600,
		Height = 1024,
		value = point(1600, 1024),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1600, arg2 = 1024},
		disabled_text = T{6964, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1600,
		Height = 1200,
		value = point(1600, 1200),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1600, arg2 = 1200},
		disabled_text = T{6965, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},							
	{
		Width = 1680,
		Height = 1050,
		value = point(1680, 1050),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1680, arg2 = 1050},
		disabled_text = T{6966, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1920,
		Height = 1080,
		value = point(1920, 1080),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1920, arg2 = 1080},
		disabled_text = T{6967, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 1920,
		Height = 1200,
		value = point(1920, 1200),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 1920, arg2 = 1200},
		disabled_text = T{6968, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 2240,
		Height = 1080,
		value = point(2240, 1080),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 2240, arg2 = 1080},
		disabled_text = T{6969, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 2240,
		Height = 1300,
		value = point(2240, 1300),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 2240, arg2 = 1300},
		disabled_text = T{6970, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
	{
		Width = 2560,
		Height = 1440,
		value = point(2560, 1440),
		text = T{1000120, "<arg1> x <arg2>", arg1 = 2560, arg2 = 1440},
		disabled_text = T{6971, --[[screen resolution]] "Off"},
		refresh_rates = 0,
	},
}

if Platform.developer then
--for debugging 4k bugs
g_WindowedVideoModes[#g_WindowedVideoModes + 1] = {
	Width = 3840,
	Height = 2160,
	value = point(3840, 2160),
	text = T{1000120, "<arg1> x <arg2>", arg1 = 3840, arg2 = 2160},
	disabled_text = T{6972, --[[screen resolution]] "Off"},
	refresh_rates = 0,
}

g_WindowedVideoModes[#g_WindowedVideoModes + 1] = {
	Width = 5760,
	Height = 1080,
	value = point(5760, 1080),
	text = T{1000120, "<arg1> x <arg2>", arg1 = 5760, arg2 = 1080},
	disabled_text = T{6973, --[[screen resolution]] "Off"},
	refresh_rates = 0,
}
end
