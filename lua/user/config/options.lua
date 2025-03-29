-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Show ongoing command in statusline
vim.opt.showcmdloc = "statusline"

-- Yank/Paste to/from system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.relativenumber = true
-- Absolute number for current line
vim.opt.number = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.wo.foldlevel = 5

vim.opt.nrformats:append('alpha')

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
