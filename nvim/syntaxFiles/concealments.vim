" match/conceal md heading delimeters
syn match @text.title '\v#+[ ]' conceal
syn match head '\v(#+[ ])@<=.*'
hi head gui=bold

" match/conceal md list delimeters
hi Conceal guifg=NONE guibg=NONE
syn match mdListDelimiter '\v(\s)*\zs-\ze\s' conceal cchar=▹
hi Conceal guifg=#a06666

" match/conceal links
hi urlText guifg=#999999 guibg=NONE gui=underline guisp=#a06666
syn match urlText '\v(\[@<!\[)@<=(.*)(\]@<!\]\(.*\))@='
" match [ if not immediately preceded by another [ and paired with *](*)
syn match urltext '\v\[@<!\[(.*\]\(.*\))@=' conceal
" match ] if preceded by [ and any number of characters and paired with (*)
syn match urlText '\v(\[.*)@<=\](\(.*\))@=' conceal
" match (*any characters*) if preceded by [*any characters*]
syn match Normal '\v(\[.*\])@<=(\(.*\))' conceal

" match/conceal backlinks
" match [[ if followed by one or more characters and ]]
syn match Normal '\v(\[\[)(.+\]\])@=' conceal
" match ]] if preceded by one or more characters and [[
syn match Normal '\v(\[\[.+)@<=\]\]' conceal
