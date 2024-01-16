local wezterm = require "wezterm"


return {
	color_scheme = 'Tangoesque (terminal.sexy)',
	use_fancy_tab_bar = false,
	enable_scroll_bar = false,
	window_padding = {
		top = 0,
		bottom = 0,
		left = 0,
		right = 0
	},
	tab_bar_at_bottom = true,

	font = wezterm.font_with_fallback {
		'FiraCode Nerd Font',
	},
	font_size = 16,
	keys = {
		{
			key = 'w',
			mods = 'CMD',
			action = wezterm.action.CloseCurrentPane { confirm = false },
		},
	}

}
