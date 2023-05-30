--              ,---------------------------,                            
--              |  /---------------------\  |
--              | |                       | |
--              | |     Jack Nemitz       | |
--              | |      .dotfiles        | |
--              | |      init.vim         | |
--              | |                       | |
--              |  \_____________________/  |
--              |___________________________|
--            ,---\_____     []     _______/------,
--          /         /______________\           /|
--        /___________________________________ /  | ___
--        |                                   |   |    )
--        |  _ _ _                 [-------]  |   |   (
--        |  o o o                 [-------]  |  /    _)_
--        |__________________________________ |/     /  /
--    /-------------------------------------/|      ( )/
--  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
--/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 
--
---------------------------------------------------
--	General Settings
---------------------------------------------------

vim.cmd('source ~/dotfiles/nvim/init.vim')

vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.scrolloff = 6
vim.o.sidescrolloff = 6
vim.o.relativenumber = true
vim.o.number = true
vim.o.confirm = true
vim.o.cursorline = true
vim.o.autoindent = true
vim.o.cmdheight = 2
vim.o.updatetime = 300
vim.o.signcolumn = 'number'
vim.o.linebreak = true
vim.o.swapfile = false
vim.o.incsearch = true
vim.o.clipboard = "unnamedplus"
vim.g.python3_host_prog = '/Users/jacknemitz/.pyenv/shims/python3'
vim.g.python2_host_prog = '/Users/jacknemitz/.pyenv/shims/python'
vim.o.foldmethod = "marker"
vim.keymap.set('', '<leader>e', "T<Space>cE()<Esc>PT<Space>lvEhyhi[]<Esc>P")
vim.keymap.set('', '<leader>r', ":%s/<br>/\r/g<CR>")
-- nnoremap("<leader>cc", ':execute "set colorcolumn=" . (&colorcolumn == "" ? "72" : "")<CR>')
-- vim.api.nvim_set_hl(0, "MatchParen", {cterm=underline, ctermbg=NONE, ctermfg=NONE})
-- vim.api.nvim_set_hl(0,"MatchParen", {gui=underline, guibg=NONE, guifg=NONE})
-- vim.api.nvim_set_hl(0,"VertSplit", {cterm=NONE})
vim.api.nvim_set_hl(0,"ColorColumn", {ctermbg=0})
-- vim.api.nvim_set_hl(0,"clear", {SignColumn})


---------------------------------------------------
--   Plugin Specific Settings
---------------------------------------------------

local _general = vim.api.nvim_create_augroup("_general", {clear = true})
-- vim.api.nvim_create_autocmd({"bufenter"},{
--   pattern = "*",
--   command = "if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif",
--   group = _general
-- })
-- autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

-- vim.o.NERDTreeMinimalUI = 1
-- vim.o.NERDTreeShowHidden = 1
-- vim.o.NERDTreeDirArrows = 1
-- vim.o.NERDTreeWinSize = 35
-- vim.g.NERDTreeWinPos = "right"
vim.api.nvim_set_hl(0, "clear", {SpellBad})
vim.api.nvim_set_hl(0, "SpellBad", {ctermfg=009, ctermbg=011})
--OCaml setup
-- set rtp+=<SHARE_DIR>/merlin/vim
-- set rtp^="/Users/jacknemitz/.opam/csci2041/share/ocp-indent/vim"
-- let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
-- autocmd FileType ocaml source /Users/jacknemitz/.opam/csci2041/share/typerex/ocp-indent/ocp-indent.vim
-- filetype plugin indent on

---------------------------------------------------
--	Key Mappings
---------------------------------------------------

-- quicker escape
vim.keymap.set("i", "jj", "<esc>")
-- open new buffer with file under cursor
vim.keymap.set("", "gf", ":edit <cfile><cr>")
-- toggle nerdtree file manager
vim.keymap.set("","<Leader>n", ":NERDTreeToggle<cr><Leader>j")
-- list buffers then prompt for buffer
vim.keymap.set("n", "<Leader>b", ":ls<CR>:b<Space>", {noremap = true})
-- toggle spell checking
vim.keymap.set("","<Leader>s", ":call ToggleSpellCheck()<CR>", {noremap = true, silent = true})
-- yank entire line after cursor
vim.keymap.set("","Y", "y$")
-- map page scroll
vim.keymap.set("","<C-j>", "<C-e>")
vim.keymap.set("","<C-k>", "<C-y>")
vim.keymap.set("","<Leader>lb", ":set linebreak<CR>", {noremap = true})
vim.keymap.set("","<Leader>nb", ":set nolinebreak<CR>", {noremap = true})
vim.keymap.set("n","<space>", "za", {noremap = true})
vim.keymap.set("n","FF", ":Telescope find_files<cr>")
vim.keymap.set("n","FB", ":Telescope buffers<cr>")

-- colors via Flavours{{{
-- Start flavours
-- base16-nvim (https://github.com/wincent/base16-nvim)
-- by Greg Hurrell (https://github.com/wincent)
-- based on
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (https://github.com/chriskempson)
-- Gruvbox dark, pale scheme by Jack Nemitz

local gui00 = "#323232"
local gui01 = "#404040"
local gui02 = "#4e4e4e"
local gui03 = "#5a5a5a"
local gui04 = "#9e9e9e"
local gui05 = "#e5c8ab"
local gui06 = "#e0d0af"
local gui07 = "#f1e2bc"
local gui08 = "#d76b6d"
local gui09 = "#ffc37f"
local gui0A = "#ffd780"
local gui0B = "#b4c08f"
local gui0C = "#85ad85"
local gui0D = "#83adad"
local gui0E = "#d485ad"
local gui0F = "#d65d0e"

local cterm00 = 0
local cterm03 = 8
local cterm05 = 7
local cterm07 = 15
local cterm08 = 1
local cterm0A = 3
local cterm0B = 2
local cterm0C = 6
local cterm0D = 4
local cterm0E = 5
local cterm01 = 10
local cterm02 = 11
local cterm04 = 12
local cterm06 = 13
local cterm09 = 9
local cterm0F = 14

vim.cmd [[
  highlight clear
  syntax reset
]]
vim.g.colors_name = "base16-desatgruv-dark-pale"

-- Vim editor colors                    fg bg ctermfg ctermbg attr guisp
vim.api.nvim_set_hl(0, 'Normal', { fg = gui05, bg = gui00, ctermfg = cterm05, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'Bold', { bold = true })
vim.api.nvim_set_hl(0, 'Debug', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Directory', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'Error', { fg = gui00, bg = gui08, ctermfg = cterm00, ctermbg = cterm08 })
vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = gui08, bg = gui00, ctermfg = cterm08, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'Exception', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'FoldColumn', { fg = gui0C, bg = gui01, ctermfg = cterm0C, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'Folded', { fg = gui03, bg = gui01, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'IncSearch', { fg = gui01, bg = gui09, ctermfg = cterm01, ctermbg = cterm09 })
vim.api.nvim_set_hl(0, 'Italic', {})
vim.api.nvim_set_hl(0, 'Macro', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = gui03, ctermbg = cterm03 })
vim.api.nvim_set_hl(0, 'ModeMsg', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'MoreMsg', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'Question', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'Search', { fg = gui01, bg = gui0A, ctermfg = cterm01, ctermbg = cterm0A })
vim.api.nvim_set_hl(0, 'Substitute', { fg = gui01, bg = gui0A, ctermfg = cterm01, ctermbg = cterm0A })
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'TooLong', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Underlined', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Visual', { bg = gui02, ctermbg = cterm02 })
vim.api.nvim_set_hl(0, 'VisualNOS', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'WildMenu', { fg = gui08, bg = gui0A, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Title', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'Conceal', { fg = gui0D, bg = gui00, ctermfg = cterm0D, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'Cursor', { fg = gui00, bg = gui05, ctermfg = cterm00, ctermbg = cterm05 })
vim.api.nvim_set_hl(0, 'NonText', { fg = gui03, ctermfg = cterm03 })
-- vim.api.nvim_set_hl(0, 'LineNr', { fg = gui03, bg = gui00, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'SignColumn', { fg = gui03, bg = gui00, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = gui04, bg = gui02, ctermfg = cterm04, ctermbg = cterm02 })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = gui03, bg = gui01, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'VertSplit', { fg = gui02, bg = gui02, ctermfg = cterm02, ctermbg = cterm02 })
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = gui00, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = gui01, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = gui01, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = gui04, bg = gui01, ctermfg = cterm04, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = gui01, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'PMenu', { fg = gui05, bg = gui01, ctermfg = cterm05, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'PMenuSel', { fg = gui01, bg = gui05, ctermfg = cterm01, ctermbg = cterm05 })
vim.api.nvim_set_hl(0, 'TabLine', { fg = gui03, bg = gui01, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'TabLineFill', { fg = gui03, bg = gui01, ctermfg = cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'TabLineSel', { fg = gui0B, bg = gui01, ctermfg = cterm0B, ctermbg = cterm01 })

-- Standard syntax highlighting
vim.api.nvim_set_hl(0, 'Boolean', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'Character', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Comment', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'Conditional', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'Constant', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'Define', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'Delimiter', { fg = gui0F, ctermfg = cterm0F })
vim.api.nvim_set_hl(0, 'Float', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'Function', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'Identifier', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'Include', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'Keyword', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'Label', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'Number', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'Operator', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'PreProc', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'Repeat', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'Special', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'SpecialChar', { fg = gui0F, ctermfg = cterm0F })
vim.api.nvim_set_hl(0, 'Statement', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'StorageClass', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'String', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'Structure', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'Tag', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'Todo', { fg = gui0A, bg = gui01, ctermfg = cterm0A, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'Type', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'Typedef', { fg = gui0A, ctermfg = cterm0A })

-- C highlighting
vim.api.nvim_set_hl(0, 'cOperator', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'cPreCondit', { fg = gui0E, ctermfg = cterm0E })

-- C# highlighting
vim.api.nvim_set_hl(0, 'csClass', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'csAttribute', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'csModifier', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'csType', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'csUnspecifiedStatement', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'csContextualStatement', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'csNewDecleration', { fg = gui08, ctermfg = cterm08 })

-- CSS highlighting
vim.api.nvim_set_hl(0, 'cssBraces', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'cssClassName', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'cssColor', { fg = gui0C, ctermfg = cterm0C })

-- Diff highlighting
vim.api.nvim_set_hl(0, 'DiffAdd', { fg = gui0B, bg = gui01, ctermfg =  cterm0B, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = gui03, bg = gui01, ctermfg =  cterm03, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = gui08, bg = gui01, ctermfg =  cterm08, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'DiffText', { fg = gui0D, bg = gui01, ctermfg =  cterm0D, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'DiffAdded', { fg = gui0B, bg = gui00, ctermfg =  cterm0B, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'DiffFile', { fg = gui08, bg = gui00, ctermfg =  cterm08, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'DiffNewFile', { fg = gui0B, bg = gui00, ctermfg =  cterm0B, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'DiffLine', { fg = gui0D, bg = gui00, ctermfg =  cterm0D, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'DiffRemoved', { fg = gui08, bg = gui00, ctermfg =  cterm08, ctermbg = cterm00 })

-- Git highlighting
vim.api.nvim_set_hl(0, 'gitcommitOverflow', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'gitcommitSummary', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'gitcommitComment', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'gitcommitUntracked', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'gitcommitDiscarded', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'gitcommitSelected', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'gitcommitHeader', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'gitcommitSelectedType', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedType', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedType', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'gitcommitBranch', { fg = gui09, ctermfg = cterm09, bold = true })
vim.api.nvim_set_hl(0, 'gitcommitUntrackedFile', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedFile', { fg = gui08, ctermfg = cterm08, bold = true })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedFile', { fg = gui08, ctermfg = cterm08, bold = true })
vim.api.nvim_set_hl(0, 'gitcommitSelectedFile', { fg = gui0B, ctermfg = cterm0B, bold = true })

-- GitGutter highlighting
vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = gui0B, bg = gui00, ctermfg = cterm0B, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = gui0D, bg = gui00, ctermfg = cterm0D, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = gui08, bg = gui00, ctermfg = cterm08, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = gui0E, bg = gui00, ctermfg = cterm0E, ctermbg = cterm00 })

-- HTML highlighting
vim.api.nvim_set_hl(0, 'htmlBold', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'htmlItalic', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'htmlEndTag', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'htmlTag', { fg = gui05, ctermfg = cterm05 })

-- JavaScript highlighting
vim.api.nvim_set_hl(0, 'javaScript', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'javaScriptBraces', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'javaScriptNumber', { fg = gui09, ctermfg = cterm09 })

-- pangloss/vim-javascript highlighting
vim.api.nvim_set_hl(0, 'jsOperator', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'jsStatement', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'jsReturn', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'jsThis', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'jsClassDefinition', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'jsFunction', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'jsFuncName', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'jsFuncCall', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'jsClassFuncName', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'jsClassMethodType', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'jsRegexpString', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'jsGlobalObjects', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'jsGlobalNodeObjects', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'jsExceptions', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'jsBuiltins', { fg = gui0A, ctermfg = cterm0A })

-- LSP highlighting
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHnformation', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { fg = gui03, ctermfg = cterm03 })

-- Mail highlighting
vim.api.nvim_set_hl(0, 'mailQuoted1', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'mailQuoted2', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'mailQuoted3', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'mailQuoted4', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'mailQuoted5', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'mailQuoted6', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'mailURL', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'mailEmail', { fg = gui0D, ctermfg = cterm0D })

-- Markdown highlighting
vim.api.nvim_set_hl(0, 'markdownCode', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'markdownError', { fg = gui05, bg = gui00, ctermfg = cterm05, ctermbg = cterm00 })
vim.api.nvim_set_hl(0, 'markdownCodeBlock', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = gui0D, ctermfg = cterm0D })

-- NERDTree highlighting
vim.api.nvim_set_hl(0, 'NERDTreeDirSlash', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'NERDTreeExecFile', { fg = gui05, ctermfg = cterm05 })

-- PHP highlighting
vim.api.nvim_set_hl(0, 'phpMemberSelector', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'phpComparison', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'phpParent', { fg = gui05, ctermfg = cterm05 })
vim.api.nvim_set_hl(0, 'phpMethodsVar', { fg = gui0C, ctermfg = cterm0C })

-- Python highlighting
vim.api.nvim_set_hl(0, 'pythonOperator', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'pythonRepeat', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'pythonInclude', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'pythonStatement', { fg = gui0E, ctermfg = cterm0E })

-- Ruby highlighting
vim.api.nvim_set_hl(0, 'rubyAttribute', { fg = gui0D, ctermfg = cterm0D })
vim.api.nvim_set_hl(0, 'rubyConstant', { fg = gui0A, ctermfg = cterm0A })
vim.api.nvim_set_hl(0, 'rubyInterpolationDelimiter', { fg = gui0F, ctermfg = cterm0F })
vim.api.nvim_set_hl(0, 'rubyRegexp', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'rubySymbol', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'rubyStringDelimiter', { fg = gui0B, ctermfg = cterm0B })

-- SASS highlighting
vim.api.nvim_set_hl(0, 'sassidChar', { fg = gui08, ctermfg = cterm08 })
vim.api.nvim_set_hl(0, 'sassClassChar', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'sassInclude', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'sassMixing', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'sassMixinName', { fg = gui0D, ctermfg = cterm0D })

-- Signify highlighting
vim.api.nvim_set_hl(0, 'SignifySignAdd', { fg = gui0B, bg = gui01, ctermfg = cterm0B, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'SignifySignChange', { fg = gui0D, bg = gui01, ctermfg = cterm0D, ctermbg = cterm01 })
vim.api.nvim_set_hl(0, 'SignifySignDelete', { fg = gui08, bg = gui01, ctermfg = cterm08, ctermbg = cterm01 })

-- Spelling highlighting
vim.api.nvim_set_hl(0, 'SpellBad', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellLocal', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellCap', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellRare', { undercurl = true })

-- Startify highlighting
vim.api.nvim_set_hl(0, 'StartifyBracket', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'StartifyFile', { fg = gui07, ctermfg = cterm07 })
vim.api.nvim_set_hl(0, 'StartifyFooter', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'StartifyHeader', { fg = gui0B, ctermfg = cterm0B })
vim.api.nvim_set_hl(0, 'StartifyNumber', { fg = gui09, ctermfg = cterm09 })
vim.api.nvim_set_hl(0, 'StartifyPath', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'StartifySection', { fg = gui0E, ctermfg = cterm0E })
vim.api.nvim_set_hl(0, 'StartifySelect', { fg = gui0C, ctermfg = cterm0C })
vim.api.nvim_set_hl(0, 'StartifySlash', { fg = gui03, ctermfg = cterm03 })
vim.api.nvim_set_hl(0, 'StartifySpecial', { fg = gui03, ctermfg = cterm03 })

-- Java highlighting
vim.api.nvim_set_hl(0, 'javaOperator', { fg = gui0D, ctermfg = cterm0D })

-- vim: filetype=lua
-- End flavours
-- }}}

require "paq" {
  "savq/paq-nvim",
  "tpope/vim-commentary",
  {"jiangmiao/auto-pairs", AutoPairsMapSpace=0},
  "preservim/nerdtree",
  {"Yggdroot/indentLine", indentLine_setColors=0},
  "airblade/vim-gitgutter",
  "tpope/vim-surround",
  "christoomey/vim-tmux-navigator",
  "neovim/nvim-lspconfig",
  "monkoose/matchparen.nvim",
  "nvim-treesitter/nvim-treesitter",
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-vsnip",
  "hrsh7th/vim-vsnip",
  -- {"iamcco/markdown-preview.nvim", run = function() vim.fn['mkdp#util#install']() end },
  "wakatime/vim-wakatime",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "digitaltoad/vim-pug",
  "b0o/schemastore.nvim",
  "windwp/nvim-ts-autotag",
  "yuezk/vim-js",
  "HerringtonDarkholme/yats.vim",
  "maxmellon/vim-jsx-pretty",
}

--cmp setup{{{
local cmp = require'cmp'
cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
})

-- make TAB complete vsnip if available!
-- FOUND: https://github.com/hrsh7th/nvim-cmp/issues/750#issuecomment-1024984115
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

_G.tab_complete = function()
    if vim.fn.call("vsnip#available", {1}) == 1 then
		return t("<Plug>(vsnip-expand-or-jump)")
    elseif vim.fn.pumvisible() then
		return t("<C-n>")
    else
        return t("<Tab>")
    end
end

vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
-- }}}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

--lspconfig{{{
local lspconfig = require('lspconfig')
lspconfig.lua_ls.setup({
  on_attach = custom_attach,
  settings = {
    Lua = {
    runtime = {
      -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
      version = "LuaJIT",
      -- Setup your lua path
      -- path = ,
    },
    diagnostics = {
      -- Get the language server to recognize the `vim` global
      globals = { "vim" },
    },
    workspace = {
      -- Make the server aware of Neovim runtime files
      -- library = api.nvim_get_runtime_file("", true),
    },
    -- Do not send telemetry data containing a randomized but unique identifier
    telemetry = {
      enable = false,
    },
    },
  },
})
lspconfig.bashls.setup {
  capabilities = capabilities
}
lspconfig.vimls.setup {
  capabilities = capabilities
}
lspconfig.cssls.setup {
  capabilities = capabilities
}
lspconfig.html.setup {
  capabilities = capabilities
}
lspconfig.jsonls.setup {
  capabilities = capabilities
}
lspconfig.tsserver.setup {
  capabilities = capabilities,
  filetypes = {"typescript", "typescriptreact", "typescript.tsx"}
}
--}}}

require('nvim-ts-autotag').setup()
