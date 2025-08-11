vim.g.mapleader = ' '

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = 'unnamedplus'
vim.opt.ignorecase = true
vim.opt.signcolumn = 'yes'

vim.pack.add({
	{src = "https://github.com/ellisonleao/gruvbox.nvim"},
	{src = "https://github.com/neovim/nvim-lspconfig"},
	{src = "https://github.com/nvim-telescope/telescope.nvim"},
	{src = "https://github.com/nvim-lua/plenary.nvim"},
	{src = "https://github.com/nvim-treesitter/nvim-treesitter"},
	{src = "https://github.com/mason-org/mason.nvim"},
	{src = "https://github.com/mason-org/mason-lspconfig.nvim"},
})

require("mason").setup()
require("mason-lspconfig").setup()

vim.cmd("colorscheme gruvbox")

vim.keymap.set('n', '<leader>e', ':Explore<CR>')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>h', builtin.help_tags, { desc = 'Telescope help tags' })
