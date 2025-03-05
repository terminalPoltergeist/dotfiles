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

return colors

-- vim.cmd('highlight clear')
-- vim.g.colors_name = colors.scheme

-- -- are the @ groups for treesitter?
-- vim.api.nvim_set_hl(0, '@variable', { fg = colors.gui05 })

-- -- Vim editor colors                    fg bg ctermfg ctermbg attr guisp
-- vim.api.nvim_set_hl(0, 'Normal', { fg = colors.gui05, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'Bold', { bold = true })
-- vim.api.nvim_set_hl(0, 'Debug', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'Directory', { fg = colors.gui0D })
-- -- vim.api.nvim_set_hl(0, 'MsgArea', { bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'Error', { fg = colors.gui00, bg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'ErrorMsg', { fg = colors.gui08, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'Exception', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'FoldColumn', { fg = colors.gui0C, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'Folded', { fg = colors.gui03, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'IncSearch', { fg = colors.gui01, bg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'Italic', {})
-- vim.api.nvim_set_hl(0, 'Macro', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'MatchParen', { bg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'ModeMsg', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'MoreMsg', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'Question', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'Search', { fg = colors.gui01, bg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Substitute', { fg = colors.gui01, bg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'SpecialKey', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'TooLong', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'Underlined', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'Visual', { bg = colors.gui02 })
-- vim.api.nvim_set_hl(0, 'VisualNOS', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'WarningMsg', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'WildMenu', { fg = colors.gui08, bg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Title', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'Conceal', { fg = colors.gui0D, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'Cursor', { fg = colors.gui00, bg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'NonText', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.gui03, bg = 'none' })
-- vim.api.nvim_set_hl(0, 'SignColumn', { fg = colors.gui03, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'StatusLine', { fg = colors.gui04, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'StatusLineNC', { fg = colors.gui02, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'VertSplit', { fg = colors.gui02, bg = colors.gui02 })
-- vim.api.nvim_set_hl(0, 'ColorColumn', { bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'CursorColumn', { bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'CursorLine', { bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.gui04, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'QuickFixLine', { bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'PMenu', { fg = colors.gui05, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'PMenuSel', { fg = colors.gui01, bg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'NormalFloat', { link = 'PMenu' })
-- vim.api.nvim_set_hl(0, 'TabLine', { fg = colors.gui03, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'TabLineFill', { fg = colors.gui03, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'TabLineSel', { fg = colors.gui0B, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'SnippetTabstop', { bg = nil }) -- this fixes the light grey background highlight that happens when a snippet is completed

-- -- Standard syntax highlighting
-- vim.api.nvim_set_hl(0, 'Boolean', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'Character', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'Comment', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'Conditional', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'Constant', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'Define', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'Delimiter', { fg = colors.gui0F })
-- vim.api.nvim_set_hl(0, 'Float', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'Function', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'Identifier', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'Include', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'Keyword', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'Label', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Number', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'Operator', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'PreProc', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Repeat', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Special', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'SpecialChar', { fg = colors.gui0F })
-- vim.api.nvim_set_hl(0, 'Statement', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'StorageClass', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'String', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'Structure', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'Tag', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Todo', { fg = colors.gui0A, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'Type', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'Typedef', { fg = colors.gui0A })

-- -- Powershell highlighting
-- vim.api.nvim_set_hl(0, 'ps1Keyword', { fg = colors.gui08 })

-- -- C highlighting
-- vim.api.nvim_set_hl(0, 'cOperator', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'cPreCondit', { fg = colors.gui0E })

-- -- C# highlighting
-- vim.api.nvim_set_hl(0, 'csClass', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'csAttribute', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'csModifier', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'csType', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'csUnspecifiedStatement', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'csContextualStatement', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'csNewDecleration', { fg = colors.gui08 })

-- -- CSS highlighting
-- vim.api.nvim_set_hl(0, 'cssBraces', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'cssClassName', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'cssColor', { fg = colors.gui0C })

-- -- Diff highlighting
-- vim.api.nvim_set_hl(0, 'DiffAdd', { fg = colors.gui0B, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'DiffChange', { fg = colors.gui03, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'DiffDelete', { fg = colors.gui08, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'DiffText', { fg = colors.gui0D, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'DiffAdded', { fg = colors.gui0B, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'DiffFile', { fg = colors.gui08, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'DiffNewFile', { fg = colors.gui0B, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'DiffLine', { fg = colors.gui0D, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'DiffRemoved', { fg = colors.gui08, bg = colors.gui00 })

-- -- Git highlighting
-- vim.api.nvim_set_hl(0, 'gitcommitOverflow', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'gitcommitSummary', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'gitcommitComment', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'gitcommitUntracked', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'gitcommitDiscarded', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'gitcommitSelected', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'gitcommitHeader', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'gitcommitSelectedType', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'gitcommitUnmergedType', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'gitcommitDiscardedType', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'gitcommitBranch', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'gitcommitUntrackedFile', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'gitcommitUnmergedFile', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'gitcommitDiscardedFile', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'gitcommitSelectedFile', { fg = colors.gui0B })

-- -- GitGutter highlighting
-- vim.api.nvim_set_hl(0, 'GitGutterAdd', { fg = colors.gui0B, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'GitGutterChange', { fg = colors.gui0D, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'GitGutterDelete', { fg = colors.gui08, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'GitGutterChangeDelete', { fg = colors.gui0E, bg = colors.gui00 })

-- -- HTML highlighting
-- vim.api.nvim_set_hl(0, 'htmlBold', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'htmlItalic', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'htmlEndTag', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'htmlTag', { fg = colors.gui05 })

-- -- JavaScript highlighting
-- vim.api.nvim_set_hl(0, 'javaScript', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'javaScriptBraces', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'javaScriptNumber', { fg = colors.gui09 })

-- -- pangloss/vim-javascript highlighting
-- vim.api.nvim_set_hl(0, 'jsOperator', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'jsStatement', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'jsReturn', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'jsThis', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'jsClassDefinition', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'jsFunction', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'jsFuncName', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'jsFuncCall', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'jsClassFuncName', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'jsClassMethodType', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'jsRegexpString', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'jsGlobalObjects', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'jsGlobalNodeObjects', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'jsExceptions', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'jsBuiltins', { fg = colors.gui0A })

-- -- LSP highlighting
-- vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultError', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultWarning', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHnformation', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'LspDiagnosticsDefaultHint', { fg = colors.gui03 })

-- -- Mail highlighting
-- vim.api.nvim_set_hl(0, 'mailQuoted1', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'mailQuoted2', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'mailQuoted3', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'mailQuoted4', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'mailQuoted5', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'mailQuoted6', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'mailURL', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'mailEmail', { fg = colors.gui0D })

-- -- Markdown highlighting
-- vim.api.nvim_set_hl(0, 'markdownCode', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'markdownError', { fg = colors.gui05, bg = colors.gui00 })
-- vim.api.nvim_set_hl(0, 'markdownCodeBlock', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'markdownHeadingDelimiter', { fg = colors.gui0D })

-- -- NERDTree highlighting
-- vim.api.nvim_set_hl(0, 'NERDTreeDirSlash', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'NERDTreeExecFile', { fg = colors.gui05 })

-- -- PHP highlighting
-- vim.api.nvim_set_hl(0, 'phpMemberSelector', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'phpComparison', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'phpParent', { fg = colors.gui05 })
-- vim.api.nvim_set_hl(0, 'phpMethodsVar', { fg = colors.gui0C })

-- -- Python highlighting
-- vim.api.nvim_set_hl(0, 'pythonOperator', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'pythonRepeat', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'pythonInclude', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'pythonStatement', { fg = colors.gui0E })

-- -- Ruby highlighting
-- vim.api.nvim_set_hl(0, 'rubyAttribute', { fg = colors.gui0D })
-- vim.api.nvim_set_hl(0, 'rubyConstant', { fg = colors.gui0A })
-- vim.api.nvim_set_hl(0, 'rubyInterpolationDelimiter', { fg = colors.gui0F })
-- vim.api.nvim_set_hl(0, 'rubyRegexp', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'rubySymbol', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'rubyStringDelimiter', { fg = colors.gui0B })

-- -- SASS highlighting
-- vim.api.nvim_set_hl(0, 'sassidChar', { fg = colors.gui08 })
-- vim.api.nvim_set_hl(0, 'sassClassChar', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'sassInclude', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'sassMixing', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'sassMixinName', { fg = colors.gui0D })

-- -- Signify highlighting
-- vim.api.nvim_set_hl(0, 'SignifySignAdd', { fg = colors.gui0B, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'SignifySignChange', { fg = colors.gui0D, bg = colors.gui01 })
-- vim.api.nvim_set_hl(0, 'SignifySignDelete', { fg = colors.gui08, bg = colors.gui01 })

-- -- Spelling highlighting
-- vim.api.nvim_set_hl(0, 'SpellBad', { undercurl = true })
-- vim.api.nvim_set_hl(0, 'SpellLocal', { undercurl = true })
-- vim.api.nvim_set_hl(0, 'SpellCap', { undercurl = true })
-- vim.api.nvim_set_hl(0, 'SpellRare', { undercurl = true })

-- -- Startify highlighting
-- vim.api.nvim_set_hl(0, 'StartifyBracket', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'StartifyFile', { fg = colors.gui07 })
-- vim.api.nvim_set_hl(0, 'StartifyFooter', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'StartifyHeader', { fg = colors.gui0B })
-- vim.api.nvim_set_hl(0, 'StartifyNumber', { fg = colors.gui09 })
-- vim.api.nvim_set_hl(0, 'StartifyPath', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'StartifySection', { fg = colors.gui0E })
-- vim.api.nvim_set_hl(0, 'StartifySelect', { fg = colors.gui0C })
-- vim.api.nvim_set_hl(0, 'StartifySlash', { fg = colors.gui03 })
-- vim.api.nvim_set_hl(0, 'StartifySpecial', { fg = colors.gui03 })

-- -- Java highlighting
-- vim.api.nvim_set_hl(0, 'javaOperator', { fg = colors.gui0D })

-- return colors
