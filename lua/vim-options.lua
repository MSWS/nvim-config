vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=0")
vim.cmd("set shiftwidth=2")
vim.cmd("set expandtab")
vim.cmd("set nu")
vim.cmd("set ic")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true })
vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true })
