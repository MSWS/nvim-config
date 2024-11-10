vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=0")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set nu")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
