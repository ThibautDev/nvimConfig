local colorsheme = "vscode"

vim.o.background = 'dark'

local status, _ = pcall(vim.cmd, "colorscheme " .. colorsheme)
if not status then
    print("Colorscheme not found!") -- print error if colorscheme not installed
    vim.cmd("colorscheme vscode") 
    return
end

if colorsheme == "vscode" then
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
        transparent = true,
        italic_comments = true,
        disable_nvimtree_bg = false,
        color_overrides = {},
        group_overrides = {},
    })
    require('vscode').load()
elseif colorsheme == "gruvbox" then

    require("gruvbox").setup({
        undercurl = true,
        underline = true,
        bold = true,
        italic = {
            strings = true,
            comments = true,
            operators = false,
            folds = true,
        },
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, 
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {
            NvimTreeNormal = {bg = "#282828"}
        },
        dim_inactive = false,
        transparent_mode = true,
    })
    vim.cmd("colorscheme gruvbox")
end
