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

-- vim.api.nvim_create_autocmd()
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("highlight-yank", {clear = true}),
    callback = function() vim.highlight.on_yank() end,
})




