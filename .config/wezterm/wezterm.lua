local wezterm = require("wezterm")

return {
	color_scheme = "Tokyo Night",
	use_fancy_tab_bar = false,
	enable_scroll_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
	},
	tab_bar_at_bottom = true,
	font_size = 14,
	keys = {
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
	},
}
