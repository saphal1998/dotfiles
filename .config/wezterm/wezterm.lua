local wezterm = require("wezterm")

return {
	use_fancy_tab_bar = false,
	enable_scroll_bar = false,
	color_scheme = "tokyonight_night",
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		top = 0,
		bottom = 0,
		left = 0,
		right = 0,
	},
	window_background_opacity = 0.8,
	tab_bar_at_bottom = true,
	font_size = 16,
	keys = {
		{
			key = "w",
			mods = "CMD",
			action = wezterm.action.CloseCurrentPane({ confirm = false }),
		},
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.SendString("tmux_sessionizer\n"), -- Replace with your script name, including any relative path if needed
		},
	},
}
