-- Start flavours
-- base16-nvim (https://github.com/wincent/base16-nvim)
-- by Greg Hurrell (https://github.com/wincent)
-- based on
-- base16-vim (https://github.com/chriskempson/base16-vim)
-- by Chris Kempson (https://github.com/chriskempson)
-- spirited-haku-dark scheme by terminalPoltergeist

local gui00 = "#1d2122"
local gui01 = "#2f3637"
local gui02 = "#414b4c"
local gui03 = "#536061"
local gui04 = "#adb5b9"
local gui05 = "#c2c8cb"
local gui06 = "#d7dbdd"
local gui07 = "#eceeef"
local gui08 = "#457080"
local gui09 = "#b09162"
local gui0A = "#747291"
local gui0B = "#a6889b"
local gui0C = "#8f4f48"
local gui0D = "#73a489"
local gui0E = "#457080"
local gui0F = "#457080"
local scheme = "base16-spirited-haku-dark"
-- End flavours

local colors = {
    scheme = scheme,
    gui00 = gui00,
    gui01 = gui01,
    gui02 = gui02,
    gui03 = gui03,
    gui04 = gui04,
    gui05 = gui05,
    gui06 = gui06,
    gui07 = gui07,
    gui08 = gui08,
    gui09 = gui09,
    gui0A = gui0A,
    gui0B = gui0B,
    gui0C = gui0C,
    gui0D = gui0D,
    gui0E = gui0E,
    gui0F = gui0F
}


vim.cmd('highlight clear')
vim.g.colors_name = colors.scheme

-- are the @ groups for treesitter?
vim.api.nvim_set_hl(0, '@variable', { fg = gui05 })

-- Vim editor colors                    fg bg ctermfg ctermbg attr guisp
vim.api.nvim_set_hl(0, 'Normal', { fg = gui05, bg = gui00 })
vim.api.nvim_set_hl(0, 'Bold', { bold = true })
vim.api.nvim_set_hl(0, 'Debug', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Directory', { fg = gui0D })
-- vim.api.nvim_set_hl(0, 'MsgArea', { bg = gui01 })
vim.api.nvim_set_hl(0, 'Error', { fg = gui00, bg = gui08 })
vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, 'Exception', { fg = gui08 })
vim.api.nvim_set_hl(0, 'FoldColumn', { fg = gui0C, bg = gui01 })
vim.api.nvim_set_hl(0, 'Folded', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'IncSearch', { fg = gui01, bg = gui09 })
vim.api.nvim_set_hl(0, 'Italic', {})
vim.api.nvim_set_hl(0, 'Macro', { fg = gui08 })
vim.api.nvim_set_hl(0, 'MatchParen', { bg = gui03 })
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
vim.api.nvim_set_hl(0, 'WarningMsg', { fg = gui08 })
vim.api.nvim_set_hl(0, 'WildMenu', { fg = gui08, bg = gui0A })
vim.api.nvim_set_hl(0, 'Title', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Conceal', { fg = gui0D, bg = gui00 })
vim.api.nvim_set_hl(0, 'Cursor', { fg = gui00, bg = gui05 })
vim.api.nvim_set_hl(0, 'NonText', { fg = gui03 })
vim.api.nvim_set_hl(0, 'LineNr', { fg = gui03, bg = 'none' })
vim.api.nvim_set_hl(0, 'SignColumn', { fg = gui03, bg = gui00 })
vim.api.nvim_set_hl(0, 'StatusLine', { fg = gui04, bg = gui01 })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = gui02, bg = gui01 })
vim.api.nvim_set_hl(0, 'VertSplit', { fg = gui02, bg = gui02 })
vim.api.nvim_set_hl(0, 'ColorColumn', { bg = gui01 })
vim.api.nvim_set_hl(0, 'CursorColumn', { bg = gui01 })
vim.api.nvim_set_hl(0, 'CursorLine', { bg = gui01 })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = gui04, bg = gui01 })
vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = gui01 })
vim.api.nvim_set_hl(0, 'PMenu', { fg = gui05, bg = gui01 })
vim.api.nvim_set_hl(0, 'PMenuSel', { fg = gui01, bg = gui05 })
vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'PMenu' })
vim.api.nvim_set_hl(0, 'TabLine', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'TabLineFill', { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, 'TabLineSel', { fg = gui0B, bg = gui01 })
vim.api.nvim_set_hl(0, 'SnippetTabstop', { bg = nil }) -- this fixes the light grey background highlight that happens when a snippet is completed

-- Standard syntax highlighting
vim.api.nvim_set_hl(0, 'Boolean', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Character', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Comment', { fg = gui03 })
vim.api.nvim_set_hl(0, 'Conditional', { fg = gui0E })
vim.api.nvim_set_hl(0, 'Constant', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Define', { fg = gui0E })
vim.api.nvim_set_hl(0, 'Delimiter', { fg = gui0F })
vim.api.nvim_set_hl(0, 'Float', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Function', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Identifier', { fg = gui08 })
vim.api.nvim_set_hl(0, 'Include', { fg = gui0D })
vim.api.nvim_set_hl(0, 'Keyword', { fg = gui0E })
vim.api.nvim_set_hl(0, 'Label', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Number', { fg = gui09 })
vim.api.nvim_set_hl(0, 'Operator', { fg = gui05 })
vim.api.nvim_set_hl(0, 'PreProc', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Repeat', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Special', { fg = gui0C })
vim.api.nvim_set_hl(0, 'SpecialChar', { fg = gui0F })
vim.api.nvim_set_hl(0, 'Statement', { fg = gui0E })
vim.api.nvim_set_hl(0, 'StorageClass', { fg = gui0A })
vim.api.nvim_set_hl(0, 'String', { fg = gui0B })
vim.api.nvim_set_hl(0, 'Structure', { fg = gui0E })
vim.api.nvim_set_hl(0, 'Tag', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Todo', { fg = gui0A, bg = gui01 })
vim.api.nvim_set_hl(0, 'Type', { fg = gui0A })
vim.api.nvim_set_hl(0, 'Typedef', { fg = gui0A })

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
vim.api.nvim_set_hl(0, 'htmlTag', { fg = gui05 })

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
vim.api.nvim_set_hl(0, 'markdownCode', { fg = gui0B })
vim.api.nvim_set_hl(0, 'markdownError', { fg = gui05, bg = gui00 })
vim.api.nvim_set_hl(0, 'markdownCodeBlock', { fg = gui0B })
vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = gui0D })

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

return colors
