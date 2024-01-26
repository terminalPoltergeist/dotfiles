" match/conceal md heading delimeters
syn match @text.title '\v#+[ ]' conceal
syn match head '\v(#+[ ])@<=.*'
hi head gui=bold

" match/conceal md list delimeters
hi Conceal guifg=NONE guibg=NONE
syn match mdListDelimiter '\v(\s)*\zs-\ze\s' conceal cchar=▹
hi Conceal guifg=#a06666

" match/conceal links
hi urlText guifg=#5f87a9 guibg=NONE gui=underline guisp=#a06666
syn match urlText '\v(\[@<!\[)@<=(.{-})(\]@<!\]\(.{-}\))@='
" match [ if not immediately preceded by another [ and paired with *](*)
syn match urltext '\v\[@<!\[(.{-}\]\(.{-}\))@=' conceal
" match ] if preceded by [ and any number of characters and paired with (*)
syn match urlText '\v(\[.{-})@<=\](\(.{-}\))@=' conceal
" match (*any characters*) if preceded by [*any characters*]
syn match Normal '\v(\[.{-}\])@<=(\(.{-}\))' conceal

" match/conceal backlinks
" match [[ if followed by one or more characters and ]]
syn match Normal '\v(\[\[)(.+\]\])@=' conceal
" match ]] if preceded by one or more characters and [[
syn match Normal '\v(\[\[.+)@<=\]\]' conceal
" match [[*../* if followed by filename.md
syn match Normal '\v(\[\[.*\/)(.+\.md)@=' conceal
" match .md if surrounded by [[]]
syn match Normal '\v(\[\[.*)@<=(\.md)(\]\])@=' conceal

" " syn match Normal '\v(\[\[)@<=(.*%#.*)(\]\])@=' conceal

" Create hi group for md italics
hi Italics gui=italic
" match * as long as they're followed by any (non *) characters and another *
syn match Italics '\v(\*)@<=(.{-})(\*)@='
" match all * in the Italics group
syn match Italics '\v(\*)@<!\*(\*)@!' conceal
" syn match Italics '\v(.*)@<=\*' conceal

hi Bolds gui=bold
syn match Bolds '\v(\*\*)@<=.{-}(\*\*)@='
syn match Bold '\v\*' conceal
" syn match Bolds '\v(\*)@<!\*\*(\*)@!' conceal
