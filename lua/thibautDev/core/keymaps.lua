local keymap = vim.keymap -- for conciseness

vim.g.mapleader = " " -- set leader key to space

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- tabbing selection
vim.api.nvim_set_keymap('v', '<Tab>', '>gv', {noremap = true})
vim.api.nvim_set_keymap('v', '<S-Tab>', '<gv', {noremap = true})

-- tab management
keymap.set("n", "<leader>ta", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader><Right>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader><Left>", ":tabp<CR>") --  go to previous tab

-- Nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
