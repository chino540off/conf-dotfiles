-- Pull in the wezterm API
local wezterm = require("wezterm")

return {
	-- For example, changing the color scheme:
	color_scheme = "Molokai",

	font = wezterm.font("JetBrains Mono", { weight = "Bold", italic = false }),
	font_size = 8.0,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	enable_tab_bar = false,
	window_background_opacity = 0.5,
	text_background_opacity = 0.5,
	hyperlink_rules = {
		-- Matches: a URL in parenthesis: (URL)
		{
			regex = "\\((\\w+://\\S+)\\)",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in brackets: [URL]
		{
			regex = "\\[(\\w+://\\S+)\\]",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in curly braces: {URL}
		{
			regex = "\\{(\\w+://\\S+)\\}",
			format = "$1",
			highlight = 1,
		},
		-- Matches: a URL in angle brackets: <URL>
		{
			regex = "<(\\w+://\\S+)>",
			format = "$1",
			highlight = 1,
		},
		-- Then handle URLs not wrapped in brackets
		{
			regex = "\\b\\w+://\\S+[)/a-zA-Z0-9-]+",
			format = "$0",
		},
		-- implicit mailto link
		{
			regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
			format = "mailto:$0",
		},
	},

	mouse_bindings = {
		-- Ctrl-click will open the link under the mouse cursor
		{
			event = { Up = { streak = 1, button = "Left" } },
			mods = "CTRL",
			action = wezterm.action.OpenLinkAtMouseCursor,
		},
	},
}
