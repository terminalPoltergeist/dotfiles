require("terminalPoltergeist.remaps")
--require("terminalPoltergeist.packer")
--require("terminalPoltergeist.colors")

local cmd = vim.cmd
local o = vim.o
local api = vim.api

cmd("source ~/.config/nvim/lua/terminalPoltergeist/functions.vim")

-- o.guicursor = ""
o.expandtab = true
o.wrap = false
o.shiftwidth = 4
o.tabstop = 4
o.hidden = true
o.mouse = 'a'
o.scrolloff = 8
o.sidescrolloff = 6
o.relativenumber = true
o.number = true
o.confirm = true
o.cursorline = true
o.autoindent = true
o.cmdheight = 1
o.updatetime = 300
o.linebreak = true
o.swapfile = false
o.incsearch = true
o.termguicolors = true
o.clipboard = "unnamedplus"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldlevel = 100 -- fold any region containing more than 100 lines
o.foldminlines = 4
-- vim.g.python3_host_prog = '/Users/jacknemitz/.pyenv/shims/python3.12'
-- vim.g.python2_host_prog = '/Users/jacknemitz/.pyenv/shims/python'

--api.nvim_create_autocmd('VimEnter',
--    { pattern = { "*.md", "*.mdx", "*.json*" }, command = ":set concealcursor= | :set conceallevel=2 | :source /Users/jacknemitz/dotfiles/roles/nvim/files/after/syntax/markdown.vim" })
---- api.nvim_create_autocmd('BufEnter', {pattern = {"*.md", "*.mdx"}, command = ":source ./"})
--api.nvim_create_autocmd('QuitPre', { pattern = { "*.md", "*.mdx" }, command = ":qa | set colorcolumn=80" }) -- quit vim when closing goyo
--api.nvim_create_autocmd('VimEnter',
--    { pattern = { "*.ps*", "*.pde" }, command = ":set tabstop=4 | set shiftwidth=4 | set colorcolumn=115" })
---- api.nvim_create_autocmd('VimEnter', {pattern = {"*.ps*", "*.pde"}, command = ":set shiftwidth=4"})
---- api.nvim_create_autocmd('VimEnter', {pattern = {"*.ps*", "*.pde"}, command = ":IndentLinesDisable | IndentLinesEnable"}) -- hacky way to get indent guides looking good
--api.nvim_create_autocmd({ "BufWritePre" }, {
--    pattern = { "*.tf", "*.tfvars" },
--    callback = function()
--        vim.lsp.buf.format()
--    end,
--})
--api.nvim_create_autocmd('VimEnter', { command = ":if argc() == 0 | Explore! | endif | set autoindent" })
--api.nvim_create_autocmd('VimEnter', { pattern = { "*.tf" }, command = ":setlocal commentstring=#\\ %s | setlocal ft=terraform" })
--api.nvim_create_autocmd('BufRead',
--    { pattern = { "inventory.yml", "hosts.yml, homelab/**/*.yml" }, command = ":set filetype=yaml.ansible" })
--
--api.nvim_create_autocmd('LspAttach', {
--    callback = function (e)
--        local opts = { buffer = e.buf }
--        vim.keymap.set("n", "gd", function () vim.lsp.buf.definition() end, opts)
--        vim.keymap.set("n", "gr", function () vim.lsp.buf.references() end, opts)
--    end,
--})
