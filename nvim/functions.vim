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
