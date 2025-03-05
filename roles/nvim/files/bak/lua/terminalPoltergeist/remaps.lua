local k = vim.keymap

vim.g.mapleader = " "

-- fs navigation
k.set("n", "<leader>ff", vim.cmd.Ex)
-- quicker escape
k.set("i", "jj", "<esc>")
-- open new buffer with file under cursor
k.set("", "gf", ":edit <cfile><cr> | :set concealcursor=v<cr>", {silent = true})
-- list buffers then prompt for buffer
k.set("n", "<Leader>b", ":ls<CR>:b<Space>", {noremap = true})
-- toggle spell checking
k.set("","<Leader>s", ":call ToggleSpellCheck()<CR>", {noremap = true, silent = true})
-- yank entire line after cursor
k.set("","Y", "y$")
-- these next two were from Primeagen
k.set("", "<C-u>", "<C-u>zz")
k.set("", "<C-d>", "<C-d>zz")
-- next/previous search centers
k.set("n", "n", "nzzzv")
k.set("n", "N", "Nzzzv")
-- move entire visual block selection
k.set("v", "J", ":m '>+1<CR>gv=gv")
k.set("v", "K", ":m '<-2<CR>gv=gv")
-- paste and keep original selection in paste buffer
k.set("x", "<leader>p", "\"_dP")

k.set("n", "J", "mzJ`z`")
-- make "jump to mark" go to horizontal location too
k.set("n", "'", "`", {noremap = true, silent = true})

k.set("","<Leader>lb", ":set linebreak<CR>", {noremap = true})
k.set("","<Leader>nb", ":set nolinebreak<CR>", {noremap = true})

k.set("n", "<Leader>hs", ":split<CR>", {noremap = true, silent = true})
k.set("n", "<Leader>vs", ":vsplit<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
