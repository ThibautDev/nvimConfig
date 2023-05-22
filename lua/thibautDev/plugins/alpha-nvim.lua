-- import lualine plugin safely
local status, lualine = pcall(require, "alpha-nvim")
if not status then
  return
end

config = function ()
    require'alpha'.setup(require'alpha.themes.dashboard'.config)
end
