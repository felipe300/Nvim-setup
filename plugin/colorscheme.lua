-- set colorscheme to tokyonight with protected call
-- in case it isn't installed
local colorscheme = "tokyonight"
local color = "storm" -- storm, night, moon, day

local status, c = pcall(require, colorscheme)
if not status then
	print("Colorscheme " .. colorscheme .. " not found!") -- print error if colorscheme not installed
	return
end

c.setup({
	style = color,
	transparent = true,
	styles = {
		comments = {
			italic = true,
		},
		keywords = {
			italic = true,
		},
		sidebars = "transparent",
	},
})

vim.cmd("colorscheme " .. colorscheme .. "-" .. color)
