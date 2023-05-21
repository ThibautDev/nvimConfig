-- auto install packer if not installed
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
    augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
    return
end


return packer.startup(function(use)

    --Package manager
    use("wbthomason/packer.nvim")

    --Colorschemes and icons
    use("ellisonleao/gruvbox.nvim")
    use('Mofiqul/vscode.nvim')
    use('nvim-tree/nvim-web-devicons')
    use('nvim-lualine/lualine.nvim')

    --Interface
    use("nvim-tree/nvim-tree.lua")
    use("romgrk/barbar.nvim")
    use("tribela/vim-transparent")

    --Code formating helper
    use("windwp/nvim-autopairs")
    use("tpope/vim-surround")

    -- git integration
    use("lewis6991/gitsigns.nvim") 

    if packer_bootstrap then
        require("packer").sync()
    end
end)
