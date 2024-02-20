--              ,---------------------------,
--              |  /---------------------\  |
--              | |                       | |
--              | |     Jack Nemitz       | |
--              | |      .dotfiles        | |
--              | |      init.lua         | |
--              | |                       | |
--              |  \_____________________/  |
--              |___________________________|
--            ,---\_____     []     _______/------,
--          /         /______________\           /|
--        /___________________________________ /  | ~~~
--        |  _ _ _                 [-------]  |   |    )
--        |  o o o                 [-------]  |  /    (
--        |__________________________________ |/     _)_
--    /-------------------------------------/|      /  /
--  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /      ( )/
--/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

local cmd = vim.cmd
local o = vim.o
local k = vim.keymap
local api = vim.api

cmd('source ~/.config/nvim/lua/functions.vim')

---------------------------------------------------
--	General Settings
---------------------------------------------------
--{{{options
o.expandtab = true
o.wrap = false
o.shiftwidth = 2
o.tabstop = 2
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
o.signcolumn = 'number'
o.linebreak = true
o.swapfile = false
o.incsearch = true
o.termguicolors = true
o.clipboard = "unnamedplus"
vim.g.python3_host_prog = '/Users/jacknemitz/.pyenv/shims/python3'
vim.g.python2_host_prog = '/Users/jacknemitz/.pyenv/shims/python'
o.foldmethod = "marker"
k.set('', '<leader>e', "T<Space>cE()<Esc>PT<Space>lvEhyhi[]<Esc>P")
k.set('', '<leader>r', ":%s/<br>/\r/g<CR>")
k.set('', '<leader>cs', ':execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>')
k.set('', '<leader>cl', ':execute "set colorcolumn=" . (&colorcolumn == "" ? "120" : "")<CR>')
-- vim.api.nvim_set_hl(0, "MatchParen", {cterm=underline, ctermbg=NONE, ctermfg=NONE})
-- vim.api.nvim_set_hl(0,"MatchParen", {gui=underline, guibg=NONE, guifg=NONE})
-- vim.api.nvim_set_hl(0,"VertSplit", {cterm=NONE})
api.nvim_set_hl(0,"ColorColumn", {ctermbg=0})
-- vim.api.nvim_set_hl(0,"clear", {SignColumn})
api.nvim_create_autocmd('VimEnter', {pattern = {"*.md", "*.mdx", "*.json"}, command = ":set concealcursor= | :set conceallevel=2"})
api.nvim_create_autocmd('VimEnter', {pattern = {"*.md", "*.mdx"}, command = ":Pencil"})
api.nvim_create_autocmd('VimEnter', {pattern = {"*.md", "*.mdx"}, command = "Goyo"})
api.nvim_create_autocmd('BufEnter', {pattern = {"*.md", "*.mdx"}, command = ":source ~/dotfiles/roles/nvim/files/syntaxFiles/markdown.vim"})
api.nvim_create_autocmd('QuitPre', {pattern = {"*.md", "*.mdx"}, command = ":qa"}) -- quit vim when closing goyo
api.nvim_create_autocmd('VimEnter', {pattern = {"*.ps*", "*.pde"}, command = ":set tabstop=4"})
api.nvim_create_autocmd('VimEnter', {pattern = {"*.ps*", "*.pde"}, command = ":set shiftwidth=4"})
api.nvim_create_autocmd('VimEnter', {pattern = {"*.ps*", "*.pde"}, command = ":IndentLinesDisable | IndentLinesEnable"}) -- hacky way to get indent guides looking good
-- function Sad(line_nr, from, to, fname)
--   vim.cmd(string.format("silent !sed -i '' '%ss/%s/%s/' %s", line_nr, from, to, fname))
-- end
-- api.nvim_create_user_command("Padd",
--   function()
--     Sad('76', 10, 20, '~/.config/alacritty/alacritty.toml')
--     Sad('77', 10, 20, '~/.config/alacritty/alacritty.toml')
--   end,
--   {}
-- )
--}}}

---------------------------------------------------
--	Colors
---------------------------------------------------
-- colors via Flavours{{{
-- Start flavours
-- base16-nvim (https://github.com/wincent/base16-nvim)
-- by Greg Hurrell (https://github.com/wincent)
-- based on
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (https://github.com/chriskempson)
-- scheme01 scheme by terminalPoltergeist

local gui00 = "#121212"
local gui01 = "#222222"
local gui02 = "#333333"
local gui03 = "#444444"
local gui04 = "#999999"
local gui05 = "#c1c1c1"
local gui06 = "#999999"
local gui07 = "#c1c1c1"
local gui08 = "#a06666"
local gui09 = "#5f8766"
local gui0A = "#ddb699"
local gui0B = "#5f87a9"
local gui0C = "#8477a4"
local gui0D = "#5f8787"
local gui0E = "#87775f"
local gui0F = "#dd9999"

-- local cterm00 = "#121212"
-- local cterm03 = "#222222"
-- local cterm05 = "#333333"
-- local cterm07 = "#444444"
-- local cterm08 = "#999999"
-- local cterm0A = "#c1c1c1"
-- local cterm0B = "#999999"
-- local cterm0C = "#c1c1c1"
-- local cterm0D = "#a06666"
-- local cterm0E = "#5f8766"
-- local cterm01 = "#ddb699"
-- local cterm02 = "#5f87a9"
-- local cterm04 = "#8477a4"
-- local cterm06 = "#5f8787"
-- local cterm09 = "#87775f"
-- local cterm0F = "#dd9999"

vim.cmd [[
  highlight clear
  syntax reset
]]
vim.g.colors_name = "base16-scheme01"

-- Vim editor colors                    fg bg ctermfg ctermbg attr guisp
vim.api.nvim_set_hl(0, 'Normal', { fg = gui07, bg = gui00 })
vim.api.nvim_set_hl(0, 'Bold', { fg = gui08, bold = true })
vim.api.nvim_set_hl(0, 'Debug', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Directory', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Error', { fg = gui00, bg = gui08 })
vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'Exception', { fg = gui08 })
vim.api.nvim_set_hl(0, 'FoldColumn', { fg = gui0C, bg = gui01 })
vim.api.nvim_set_hl(0, 'Folded', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'IncSearch', { fg = gui01, bg = gui03 })
vim.api.nvim_set_hl(0, 'Italic', { fg=gui09 })
vim.api.nvim_set_hl(0, 'Macro', { fg = gui08 })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = gui0B })
vim.api.nvim_set_hl(0, 'ModeMsg', { fg = gui0B })
vim.api.nvim_set_hl(0, 'MoreMsg', { fg = gui0B })
vim.api.nvim_set_hl(0, 'Question', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Search', { fg = gui01, bg = gui0A })
vim.api.nvim_set_hl(0, 'Substitute', { fg = gui01, bg = gui0A })
vim.api.nvim_set_hl(0, 'SpecialKey', { fg = gui03 })
vim.api.nvim_set_hl(0, 'TooLong', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Underlined', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Visual', { bg = gui02 })
vim.api.nvim_set_hl(0, 'VisualNOS', { fg = gui08 })
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = gui0A })
vim.api.nvim_set_hl(0, 'WildMenu', { fg = gui08, bg = gui0A })
vim.api.nvim_set_hl(0, 'Title', { fg = gui0F })
vim.api.nvim_set_hl(0, 'Conceal', { fg = gui0D, bg = gui00 })
vim.api.nvim_set_hl(0, 'Cursor', { fg = gui00, bg = gui05 })
vim.api.nvim_set_hl(0, 'NonText', { fg = gui03 })
vim.api.nvim_set_hl(0, 'LineNr', { fg = gui04, bg = gui00 })
vim.api.nvim_set_hl(0, 'SignColumn', { fg = gui03, bg = gui00 })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'VertSplit', { fg = gui02, bg = gui02 })
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = gui00 })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = gui00 })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = gui01 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = gui01 })
vim.api.nvim_set_hl(0, 'PMenu', { fg = gui05, bg = gui01 })
vim.api.nvim_set_hl(0, 'PMenuSel', { fg = gui01, bg = gui05 })
vim.api.nvim_set_hl(0, 'TabLine', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'TabLineFill', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'TabLineSel', { fg = gui0B, bg = gui01 })

-- Standard syntax highlighting
vim.api.nvim_set_hl(0, 'Boolean', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Character', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Comment', { fg = gui04 })
vim.api.nvim_set_hl(0, 'Conditional', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Constant', { fg = gui0C })
vim.api.nvim_set_hl(0, 'Define', { fg = gui0B })
vim.api.nvim_set_hl(0, 'Delimiter', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Float', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Function', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Identifier', { fg = gui07 })
vim.api.nvim_set_hl(0, 'Include', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Keyword', { fg = gui0B })
vim.api.nvim_set_hl(0, 'Label', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Number', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Operator', { fg = gui06 })
vim.api.nvim_set_hl(0, 'PreProc', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Repeat', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Special', { fg = gui0B })
vim.api.nvim_set_hl(0, 'SpecialChar', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Statement', { fg = gui0E })
vim.api.nvim_set_hl(0, 'StorageClass', { fg = gui0A })
vim.api.nvim_set_hl(0, 'String', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Structure', { fg = gui0C })
vim.api.nvim_set_hl(0, 'Tag', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Todo', { fg = gui08, bg = gui01 })
vim.api.nvim_set_hl(0, 'Type', { fg = gui0C })
vim.api.nvim_set_hl(0, 'Typedef', { fg = gui08 })

-- Powershell highlighting
vim.api.nvim_set_hl(0, 'ps1Keyword', { fg = gui08 })

-- C highlighting
vim.api.nvim_set_hl(0, 'cOperator', { fg = gui0C })
vim.api.nvim_set_hl(0, 'cPreCondit', { fg = gui0E })

-- C# highlighting
vim.api.nvim_set_hl(0, 'csClass', { fg = gui0A })
vim.api.nvim_set_hl(0, 'csAttribute', { fg = gui0A })
vim.api.nvim_set_hl(0, 'csModifier', { fg = gui0E })
vim.api.nvim_set_hl(0, 'csType', { fg = gui08 })
vim.api.nvim_set_hl(0, 'csUnspecifiedStatement', { fg = gui0D })
vim.api.nvim_set_hl(0, 'csContextualStatement', { fg = gui0E })
vim.api.nvim_set_hl(0, 'csNewDecleration', { fg = gui08 })

-- CSS highlighting
vim.api.nvim_set_hl(0, 'cssBraces', { fg = gui05 })
vim.api.nvim_set_hl(0, 'cssClassName', { fg = gui0E })
vim.api.nvim_set_hl(0, 'cssColor', { fg = gui0C })

-- Diff highlighting
vim.api.nvim_set_hl(0, 'DiffAdd', { fg = gui0B, bg = gui01 })
vim.api.nvim_set_hl(0, 'DiffChange', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'DiffDelete', { fg = gui08, bg = gui01 })
vim.api.nvim_set_hl(0, 'DiffText', { fg = gui0D, bg = gui01 })
vim.api.nvim_set_hl(0, 'DiffAdded', { fg = gui0B, bg = gui00 })
vim.api.nvim_set_hl(0, 'DiffFile', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'DiffNewFile', { fg = gui0B, bg = gui00 })
vim.api.nvim_set_hl(0, 'DiffLine', { fg = gui0D, bg = gui00 })
vim.api.nvim_set_hl(0, 'DiffRemoved', { fg = gui08, bg = gui00 })

-- Git highlighting
vim.api.nvim_set_hl(0, 'gitcommitOverflow', { fg = gui08 })
vim.api.nvim_set_hl(0, 'gitcommitSummary', { fg = gui0B })
vim.api.nvim_set_hl(0, 'gitcommitComment', { fg = gui03 })
vim.api.nvim_set_hl(0, 'gitcommitUntracked', { fg = gui03 })
vim.api.nvim_set_hl(0, 'gitcommitDiscarded', { fg = gui03 })
vim.api.nvim_set_hl(0, 'gitcommitSelected', { fg = gui03 })
vim.api.nvim_set_hl(0, 'gitcommitHeader', { fg = gui0E })
vim.api.nvim_set_hl(0, 'gitcommitSelectedType', { fg = gui0D })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedType', { fg = gui0D })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedType', { fg = gui0D })
vim.api.nvim_set_hl(0, 'gitcommitBranch', { fg = gui09 })
vim.api.nvim_set_hl(0, 'gitcommitUntrackedFile', { fg = gui0A })
vim.api.nvim_set_hl(0, 'gitcommitUnmergedFile', { fg = gui08 })
vim.api.nvim_set_hl(0, 'gitcommitDiscardedFile', { fg = gui08 })
vim.api.nvim_set_hl(0, 'gitcommitSelectedFile', { fg = gui0B })

-- GitGutter highlighting
vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = gui0B, bg = gui00 })
vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = gui0D, bg = gui00 })
vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = gui0E, bg = gui00 })

-- HTML highlighting
vim.api.nvim_set_hl(0, 'htmlBold', { fg = gui0A })
vim.api.nvim_set_hl(0, 'htmlItalic', { fg = gui0E })
vim.api.nvim_set_hl(0, 'htmlEndTag', { fg = gui05 })
vim.api.nvim_set_hl(0, 'htmlTag', { fg = gui0D })

-- JavaScript highlighting
vim.api.nvim_set_hl(0, 'javaScript', { fg = gui05 })
vim.api.nvim_set_hl(0, 'javaScriptBraces', { fg = gui05 })
vim.api.nvim_set_hl(0, 'javaScriptNumber', { fg = gui09 })

-- pangloss/vim-javascript highlighting
vim.api.nvim_set_hl(0, 'jsOperator', { fg = gui0D })
vim.api.nvim_set_hl(0, 'jsStatement', { fg = gui0E })
vim.api.nvim_set_hl(0, 'jsReturn', { fg = gui0E })
vim.api.nvim_set_hl(0, 'jsThis', { fg = gui08 })
vim.api.nvim_set_hl(0, 'jsClassDefinition', { fg = gui0A })
vim.api.nvim_set_hl(0, 'jsFunction', { fg = gui0E })
vim.api.nvim_set_hl(0, 'jsFuncName', { fg = gui0D })
vim.api.nvim_set_hl(0, 'jsFuncCall', { fg = gui0D })
vim.api.nvim_set_hl(0, 'jsClassFuncName', { fg = gui0D })
vim.api.nvim_set_hl(0, 'jsClassMethodType', { fg = gui0E })
vim.api.nvim_set_hl(0, 'jsRegexpString', { fg = gui0C })
vim.api.nvim_set_hl(0, 'jsGlobalObjects', { fg = gui0A })
vim.api.nvim_set_hl(0, 'jsGlobalNodeObjects', { fg = gui0A })
vim.api.nvim_set_hl(0, 'jsExceptions', { fg = gui0A })
vim.api.nvim_set_hl(0, 'jsBuiltins', { fg = gui0A })

-- LSP highlighting
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { fg = gui08 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { fg = gui09 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHnformation', { fg = gui05 })
vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { fg = gui03 })

-- Mail highlighting
vim.api.nvim_set_hl(0, 'mailQuoted1', { fg = gui0A })
vim.api.nvim_set_hl(0, 'mailQuoted2', { fg = gui0B })
vim.api.nvim_set_hl(0, 'mailQuoted3', { fg = gui0E })
vim.api.nvim_set_hl(0, 'mailQuoted4', { fg = gui0C })
vim.api.nvim_set_hl(0, 'mailQuoted5', { fg = gui0D })
vim.api.nvim_set_hl(0, 'mailQuoted6', { fg = gui0A })
vim.api.nvim_set_hl(0, 'mailURL', { fg = gui0D })
vim.api.nvim_set_hl(0, 'mailEmail', { fg = gui0D })

-- Markdown highlighting
vim.api.nvim_set_hl(0, 'markdownCode', { fg = gui0D })
vim.api.nvim_set_hl(0, 'markdownError', { fg = gui05, bg = gui00 })
vim.api.nvim_set_hl(0, 'markdownCodeBlock', { fg = gui0D })
vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = gui0F })
vim.api.nvim_set_hl(0, '@text.title.1.markdown', { fg = gui08 })
vim.api.nvim_set_hl(0, '@text.title.2.markdown', { fg = gui09 })
vim.api.nvim_set_hl(0, '@text.title.3.markdown', { fg = gui0A })
vim.api.nvim_set_hl(0, '@text.title.4.markdown', { fg = gui0B })
vim.api.nvim_set_hl(0, '@text.title.5.markdown', { fg = gui0C })
vim.api.nvim_set_hl(0, '@text.title.6.markdown', { fg = gui0D })

-- NERDTree highlighting
vim.api.nvim_set_hl(0, 'NERDTreeDirSlash', { fg = gui0D })
vim.api.nvim_set_hl(0, 'NERDTreeExecFile', { fg = gui05 })

-- PHP highlighting
vim.api.nvim_set_hl(0, 'phpMemberSelector', { fg = gui05 })
vim.api.nvim_set_hl(0, 'phpComparison', { fg = gui05 })
vim.api.nvim_set_hl(0, 'phpParent', { fg = gui05 })
vim.api.nvim_set_hl(0, 'phpMethodsVar', { fg = gui0C })

-- Python highlighting
vim.api.nvim_set_hl(0, 'pythonOperator', { fg = gui0E })
vim.api.nvim_set_hl(0, 'pythonRepeat', { fg = gui0E })
vim.api.nvim_set_hl(0, 'pythonInclude', { fg = gui0E })
vim.api.nvim_set_hl(0, 'pythonStatement', { fg = gui0E })

-- Ruby highlighting
vim.api.nvim_set_hl(0, 'rubyAttribute', { fg = gui0D })
vim.api.nvim_set_hl(0, 'rubyConstant', { fg = gui0A })
vim.api.nvim_set_hl(0, 'rubyInterpolationDelimiter', { fg = gui0F })
vim.api.nvim_set_hl(0, 'rubyRegexp', { fg = gui0C })
vim.api.nvim_set_hl(0, 'rubySymbol', { fg = gui0B })
vim.api.nvim_set_hl(0, 'rubyStringDelimiter', { fg = gui0B })

-- SASS highlighting
vim.api.nvim_set_hl(0, 'sassidChar', { fg = gui08 })
vim.api.nvim_set_hl(0, 'sassClassChar', { fg = gui09 })
vim.api.nvim_set_hl(0, 'sassInclude', { fg = gui0E })
vim.api.nvim_set_hl(0, 'sassMixing', { fg = gui0E })
vim.api.nvim_set_hl(0, 'sassMixinName', { fg = gui0D })

-- Signify highlighting
vim.api.nvim_set_hl(0, 'SignifySignAdd', { fg = gui0B, bg = gui01 })
vim.api.nvim_set_hl(0, 'SignifySignChange', { fg = gui0D, bg = gui01 })
vim.api.nvim_set_hl(0, 'SignifySignDelete', { fg = gui08, bg = gui01 })

-- Spelling highlighting
vim.api.nvim_set_hl(0, 'SpellBad', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellLocal', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellCap', { undercurl = true })
vim.api.nvim_set_hl(0, 'SpellRare', { undercurl = true })

-- Startify highlighting
vim.api.nvim_set_hl(0, 'StartifyBracket', { fg = gui03 })
vim.api.nvim_set_hl(0, 'StartifyFile', { fg = gui07 })
vim.api.nvim_set_hl(0, 'StartifyFooter', { fg = gui03 })
vim.api.nvim_set_hl(0, 'StartifyHeader', { fg = gui0B })
vim.api.nvim_set_hl(0, 'StartifyNumber', { fg = gui09 })
vim.api.nvim_set_hl(0, 'StartifyPath', { fg = gui03 })
vim.api.nvim_set_hl(0, 'StartifySection', { fg = gui0E })
vim.api.nvim_set_hl(0, 'StartifySelect', { fg = gui0C })
vim.api.nvim_set_hl(0, 'StartifySlash', { fg = gui03 })
vim.api.nvim_set_hl(0, 'StartifySpecial', { fg = gui03 })

-- Java highlighting
vim.api.nvim_set_hl(0, 'javaOperator', { fg = gui0D })

-- vim: filetype=lua
-- End flavours
-- }}}

---------------------------------------------------
--   Plugin Specific Settings
---------------------------------------------------
--{{{plugin settings
api.nvim_create_autocmd('BufRead', {pattern = {"inventory.yml", "hosts.yml"}, command = ":set filetype=yaml.ansible"})
-- local _general = api.nvim_create_augroup("_general", {clear = false})
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
-- api.nvim_set_hl(0, "clear", {SpellBad})
--OCaml setup
-- set rtp+=<SHARE_DIR>/merlin/vim
-- set rtp^="/Users/jacknemitz/.opam/csci2041/share/ocp-indent/vim"
-- let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
-- autocmd FileType ocaml source /Users/jacknemitz/.opam/csci2041/share/typerex/ocp-indent/ocp-indent.vim
-- filetype plugin indent on
cmd('let g:instant_markdown_autostart = 0')
cmd('let g:goyo_width = 95')
cmd('let g:pencil#conceallevel = 2')
cmd('let g:pencil#concealcursor = ""')
cmd('let g:pencil#wrapModeDefault = "soft"')
cmd('let g:pencil#cursorwrap = 0    " 0=disable, 1=enable (def)')
cmd('let g:indentLine_char = "·"') -- set indent indicator to ·
-- vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--   callback = function()
--     require("lint").try_lint()
--   end,
-- })
--}}}

---------------------------------------------------
--	Key Mappings
---------------------------------------------------
--{{{key mappings
-- quicker escape
k.set("i", "jj", "<esc>")
-- open new buffer with file under cursor
k.set("", "gf", ":edit <cfile><cr> | :set concealcursor=vi<cr>")
-- toggle nerdtree file manager
k.set("","<Leader>n", ":NERDTreeToggle<cr><Leader>j")
-- list buffers then prompt for buffer
k.set("n", "<Leader>b", ":ls<CR>:b<Space>", {noremap = true})
-- toggle spell checking
k.set("","<Leader>s", ":call ToggleSpellCheck()<CR>", {noremap = true, silent = true})
-- toggle Goyo
k.set("","<Leader>g", ":call ToggleGoyo()<CR>", {noremap = true, silent = true})
-- yank entire line after cursor
k.set("","Y", "y$")
-- beter word motion
-- maybe this wasn't such a good idea?
-- k.set("", "w", "W")
-- k.set("", "W", "w")
-- k.set("", "b", "B")
-- k.set("", "B", "b")
-- map page scroll
-- vim.keymap.set("","<C-j>", "<C-e>")
-- vim.keymap.set("","<C-k>", "<C-y>")
-- these next two were from Primeagen
k.set("", "<C-u>", "<C-u>zz")
k.set("", "<C-d>", "<C-d>zz")
k.set("","<Leader>lb", ":set linebreak<CR>", {noremap = true})
k.set("","<Leader>nb", ":set nolinebreak<CR>", {noremap = true})
k.set("n","<space>", "za", {noremap = true})
k.set("n","FF", ":Telescope find_files<cr><esc>")
k.set("n","FB", ":Telescope buffers<cr><esc>")
k.set("n", "<Leader>f", ":Rg<CR>", {noremap = true, silent = true})
k.set("i", "<C-f>", "<esc>:call InsertFile()<CR>", {noremap = true})
k.set("n", "gd", ":call JumpDef()<cr>")
k.set("n", "]h", "<Plug>(GitGutterNextHunk)", {noremap = true})
k.set("n", "[h", "<Plug>(GitGutterPrevHunk)", {noremap = true})
api.nvim_set_keymap('n', '<leader>do', '<cmd>lua vim.diagnostic.open_float()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>d[', '<cmd>lua vim.diagnostic.goto_prev()<CR>', { noremap = true, silent = true })
api.nvim_set_keymap('n', '<leader>d]', '<cmd>lua vim.diagnostic.goto_next()<CR>', { noremap = true, silent = true })
-- The following command requires plug-ins "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", and optionally "kyazdani42/nvim-web-devicons" for icon support
api.nvim_set_keymap('n', '<leader>dd', '<cmd>Telescope diagnostics<CR>', { noremap = true, silent = true })
-- If you don't want to use the telescope plug-in but still want to see all the errors/warnings, comment out the telescope line and uncomment this:
-- vim.api.nvim_set_keymap('n', '<leader>dd', '<cmd>lua vim.diagnostic.setloclist()<CR>', { noremap = true, silent = true })
--}}}

---------------------------------------------------
--	Plugins
---------------------------------------------------
--{{{plugins
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
  "wakatime/vim-wakatime",
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
  "digitaltoad/vim-pug",
  "b0o/schemastore.nvim",
  "windwp/nvim-ts-autotag",
  "yuezk/vim-js",
  "HerringtonDarkholme/yats.vim",
  "maxmellon/vim-jsx-pretty",
  "mustache/vim-mustache-handlebars",
  "instant-markdown/vim-instant-markdown",
  "junegunn/fzf",
  "junegunn/fzf.vim",
  "startup-nvim/startup.nvim",
  "junegunn/goyo.vim",
  "preservim/vim-pencil",
  "pearofducks/ansible-vim",
  "norcalli/nvim-colorizer.lua",
  -- "mfussenegger/nvim-lint"
  -- { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end },
  -- "ThePrimeagen/vim-be-good",
}
--}}}

require'colorizer'.setup()

require'colorizer'.setup({
  javascript = { names = false },
  css = {
    names = false;
    rgb_fn = true;
  },
  xml = {
    names = false;
    mode = 'background'
  },
  yaml = {
    mode = 'background'
  }
}, { mode = 'foreground' })

require"startup".setup()

-- {{{telescope config
require('telescope').setup({
  defaults = {
    layout_strategy = "bottom_pane",
    results_title = false,
    sorting_strategy = "ascending",
    layout_config = {
        center = {
            width = 0.9,
            height = 0.5,
            },
        preview_width = 0.65,
        preview_cutoff = 80,
        -- other layout configuration here
        },
    -- other defaults configuration here },
  -- other configuration values here
  }
})
---}}}

--{{{treesitter config
require('nvim-treesitter.configs').setup{
  ensure_installed = { "c", "lua", "vim", "tsx", "markdown" },
  sync_install = false,
  auto_install = true,
  highlight= {
    enable=true,
  }
}
--}}}

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
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        -- elseif luasnip.expand_or_jumpable() then
          -- luasnip.expand_or_jump()
        else
          fallback()
        end
      end, {"i", "s"}),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        -- elseif luasnip.jumpable(-1) then
          -- luasnip.jump(-1)
        else
          fallback()
        end
      end, {"i", "s"}),
      ['<C-k>'] = cmp.mapping.scroll_docs(-4),
      ['<C-j>'] = cmp.mapping.scroll_docs(4),
      -- ['<M-Space>'] = cmp.mapping.complete(),
      ['<C-a>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
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
    return api.nvim_replace_termcodes(str, true, true, true)
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

api.nvim_set_keymap("i", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
api.nvim_set_keymap("s", "<S-Tab>", "v:lua.tab_complete()", {expr = true})
-- }}}

--lspconfig{{{

local capabilities = require('cmp_nvim_lsp').default_capabilities()

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

lspconfig.marksman.setup{
  capabilities = capabilities
}

lspconfig.ansiblels.setup{
  capabilities = capabilities,
  -- on_attach = function(client, bufnr)
  --   require("shared").on_attach(client, bufnr)

  --   api.nvim_create_autocmd("BufWritePre", {
  --     pattern = {
  --       "*.yml"
  --     },
  --     command = [[lua OrgImports(1000)]]
  --   })
  -- end,
}

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
  cmd = {"typescript-language-server", "--stdio"},
  filetypes = {"typescript", "typescriptreact", "typescript.tsx"}
}
lspconfig.tailwindcss.setup{
  capabilities = capabilities
}
lspconfig.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391', 'E722', 'E231', 'E501', 'E401'},
          maxLineLength = 100
        }
      }
    }
  }
}
lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = function(client, bufnr)
    require("shared").on_attach(client, bufnr)

    api.nvim_create_autocmd("BufWritePre", {
      pattern = {
        "*.go"
      },
      command = [[lua OrgImports(1000)]]
    })
  end,
  cmd = { "gopls" },
  settings = {
    gopls = {
      analyses = {
        nilness = true,
        unusedparams = true,
        unusedwrite = true,
        useany = true,
      },
      experimentalPostfixCompletions = true,
      gofumpt = true,
      staticcheck = true,
      usePlaceholders = true,
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      }
    },
  },
})

lspconfig.powershell_es.setup{
  bundle_path = '/usr/local/bin/PowerShellEditorServices',
  shell = '/usr/local/bin/pwsh'
}
--}}}

require('nvim-ts-autotag').setup()
