vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>") -- Netrw

vim.keymap.set("i", "{", "{}<Left>")
vim.keymap.set("i", "(", "()<Left>")
vim.keymap.set("i", "[", "[]<Left>")
vim.keymap.set("i", "'", "''<Left>")
vim.keymap.set("i", "\"", "\"\"<Left>")

vim.keymap.set("n", "<Esc>", "<Cmd>nohlsearch<CR>")

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, {desc = "Go to previous [D]iagnostic message"})
vim.keymap.set("n", "d]", vim.diagnostic.goto_next, {desc = "Go to next [D]iagnostic message"})
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<leader>r", ":%s//g<left><left>")

vim.keymap.set("n", "<leader>die", "<cmd>CellularAutomaton make_it_rain<CR>")
-- vim.keymap.set("n", "<leader>g", "<Cmd>ma g<CR>_i-- <Esc><Cmd>'g<CR>3<left>")

vim.keymap.set("i", "<C-_>", "<ESC>_i", { desc = "move beginning of line" })
vim.keymap.set("i", "<C-$>", "<End>", { desc = "move end of line" })
vim.keymap.set("i", "<C-h>", "<Left>", { desc = "move left" })
vim.keymap.set("i", "<C-l>", "<Right>", { desc = "move right" })
vim.keymap.set("i", "<C-j>", "<Down>", { desc = "move down" })
vim.keymap.set("i", "<C-k>", "<Up>", { desc = "move up" })

-- vim.api.nvim_create_autocmd()
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", {clear = true}),
    callback = function() vim.highlight.on_yank() end,
})




