require("ethan.getOS")

operatingSystem = getOS()

vim.opt.syntax = "on"
vim.opt.filetype = "on"

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

if operatingSystem == "GNU/Linux" then
    vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
elseif operatingSystem == "Windows" then
    vim.opt.undodir = ".vim/undodir"
end

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = false

vim.opt.ls = 0
--vim.api.guioptions = "r"
--gui-horiz-scroll = ""

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.cursorline = true
