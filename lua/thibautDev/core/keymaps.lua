local keymap = vim.keymap -- for conciseness

vim.g.mapleader = " " -- set leader key to space

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement


-- tab management
keymap.set("n", "<leader>ta", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tc", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader><Right>", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader><Left>", ":tabp<CR>") --  go to previous tab
