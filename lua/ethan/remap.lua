vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>") -- Netrw

vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "\"", "\"\"<Left>")


vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {desc = "Go to previous [D]iagnostic message"})
vim.keymap.set("n", "d]", vim.diagnostic.goto_next, {desc = "Go to next [D]iagnostic message"})

vim.keymap.set("n", "<leader>r", ":%s//g<left><left>")

-- vim.keymap.set("n", "<leader>g", "<Cmd>ma g<CR>_i-- <Esc><Cmd>'g<CR>3<left>")



