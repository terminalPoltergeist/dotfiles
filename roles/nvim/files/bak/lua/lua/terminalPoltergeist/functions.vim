"              ,---------------------------,
"              |  /---------------------\  |
"              | |                       | |
"              | |     Jack Nemitz       | |
"              | |      .dotfiles        | |
"              | |    functions.vim      | |
"              | |                       | |
"              |  \_____________________/  |
"              |___________________________|
"            ,---\_____     []     _______/------,
"          /         /______________\           /|
"        /___________________________________ /  | ___
"        |                                   |   |    )
"        |  _ _ _                 [-------]  |   |   (
"        |  o o o                 [-------]  |  /    _)_
"        |__________________________________ |/     /  /
"    /-------------------------------------/|      ( )/
"  /-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
"/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/-/ /
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ 

" Custom vim-script functions

" Toggle spellchecking. From https://gist.github.com/brandonpittman/9d15134057c7267a88a8
function! ToggleSpellCheck()
  set spell!
  if &spell
     echo "Spellcheck ON"
  else
     echo "Spellcheck OFF"
  endif
endfunction

function! ToggleGoyo()
  Goyo
  if &go
    Goyo
    echo "Goyo OFF"
  else
    echo "Goyo ON"
  endif
endfunction

function! JumpDef()
  let def=expand('<cword>')
  execute "Rg " . def
endfunction

"function! Open()
"  let @/=eval('\v((\[\[.*\]\])+.*\[\[)@<=(.{-}%#.{-})(\]\])@=')
"  echo @/
"  "echo eval('%s/\v(\[\[)@<=(.*%#.*)(\]\])@=')
"endfunction

" function InsertFile()
"   Files /Users/jacknemitz/Desktop/notes/
" endfunction

function! FoldFunctions()
    g/function.*{/norm!za
endfunction
