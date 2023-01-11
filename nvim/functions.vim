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

" TOC for vim
function! TocInit()
  call feedkeys("gg") 
  call setline(".", "#Table of Contents")
  call feedkeys("o")
endfunction

function! TocAdd()
  if getline(".")[:4] == "[toc]"
    let num = line(".")
    call feedkeys("0f:lY/#Table of Contents\n")
    call feedkeys("ojjp")
    call feedkeys(":noh\n")
    call feedkeys(":" . num . "\nj")
  endif
endfunction

" autocmd InsertLeave *.md :call TocAdd()
