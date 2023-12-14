local wezterm = require "wezterm"

local function scheme_for_appearance(appearance)
	if appearance:find "Dark" then
		return "Catppuccin Mocha"
	else
		return "Catppuccin Latte"
	end
end

return {
	color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
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
	font_size = 16
}
