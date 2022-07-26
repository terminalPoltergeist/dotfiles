" 
"     	            J:::::::::N      N::::::N
"   	            J::::::::::N     N::::::N
"   	            J:::::::::::N    N::::::N
"   	            J::::::N:::::N   N::::::N
"   	            J:::::: N:::::N  N::::::N
"   	            J:::::j  N:::::N N::::::N
"   	            J:::::J   N:::::N:::::::N
"   	JJJJJJJ     J:::::J    N::::::::::::N
"   	J:::::J     J:::::J     N:::::::::::N
"   	J::::::J   J::::::J      N::::::::::N
"   	J:::::::JJJ:::::::J       N:::::::::N
"   	 JJ:::::::::::::JJ         N::::::::N
"   	   JJ:::::::::JJ            N:::::::N
"   	     JJJJJJJJJ               NNNNNNNN		      
"
"	Personal vim configuration of Jack Nemitz <jacknemitz.com>

"-------------------------------------------------
"	General Settings
"-------------------------------------------------

set expandtab
set shiftwidth=4
set tabstop=4
set hidden
set mouse=a
set scrolloff=8
set sidescrolloff=8
set relativenumber
set number
set confirm
set autoindent
set cmdheight=2
set updatetime=300
set signcolumn=number
syntax on
set noswapfile
highlight LineNr ctermfg=grey
set incsearch
set clipboard=unnamedplus
highlight MatchParen cterm=underline ctermbg=NONE ctermfg=NONE
highlight MatchParen gui=underline guibg=NONE guifg=NONE
highlight VertSplit cterm=NONE
highlight LineNr ctermbg=NONE
highlight clear SignColumn


"-------------------------------------------------
"   Plugin Specific Settings
"-------------------------------------------------

autocmd bufenter * if (winnr("$") ==1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" let NERDTreeHighlightCursorline = 1
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=1
let NERDTreeDirArrows = 1
let NERDTreeWinSize = 35
let g:NERDTreeWinPos = "right"
:highlight clear SpellBad
:highlight SpellBad ctermfg=009 ctermbg=011
" OCaml setup
set rtp+=<SHARE_DIR>/merlin/vim
set rtp^="/Users/jacknemitz/.opam/csci2041/share/ocp-indent/vim"
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
autocmd FileType ocaml source /Users/jacknemitz/.opam/csci2041/share/typerex/ocp-indent/ocp-indent.vim


"-------------------------------------------------
"	Key Mappings
"-------------------------------------------------

" quicker escape
imap jj <esc>
" open new buffer with file under cursor
map gf :edit <cfile><cr>
" toggle nerdtree file manager
map <Leader>n :NERDTreeToggle<cr><Leader>j
" list buffers then prompt for buffer
nnoremap <Leader>b :ls<CR>:b<Space>
" toggle spell checking
noremap <silent> <Leader>s :call ToggleSpellCheck()<CR>
" yank entire line after cursor
map Y y$

"-------------------------------------------------
"	Plugins
"-------------------------------------------------

" auto installs vim plug if it doesn't exist
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
    autocmd VimEnter * PlugInstall | source ~/dotfiles/nvim/init.vim
endif

call plug#begin('~/.config/nvim/plugins/')

source ~/dotfiles/nvim/plugins/commentary.vim
" source ~/dotfiles/nvim/plugins/airline.vim
source ~/dotfiles/nvim/plugins/syntastic.vim
source ~/dotfiles/nvim/plugins/auto-pairs.vim
source ~/dotfiles/nvim/plugins/nerdtree.vim
" source ~/dotfiles/nvim/plugins/devicons.vim
source ~/dotfiles/nvim/functions.vim
source ~/dotfiles/nvim/plugins/indentline.vim
source ~/dotfiles/nvim/plugins/gitguttr.vim
source ~/dotfiles/nvim/plugins/fugitive.vim
source ~/dotfiles/nvim/plugins/markdown-preview.vim
source ~/dotfiles/nvim/plugins/vim-fugitive.vim
source ~/dotfiles/nvim/plugins/vim-gitgutter.vim
source ~/dotfiles/nvim/plugins/vim-surround.vim
source ~/dotfiles/nvim/plugins/vim-tmux-navigator.vim
source ~/dotfiles/nvim/plugins/nerdtree-git-plugin.vim
source ~/dotfiles/nvim/plugins/coc.vim
" source ~/dotfiles/nvim/plugins/coc.vim
source ~/dotfiles/nvim/plugins/bracey.vim
source ~/dotfiles/nvim/plugins/vim-startify.vim
source ~/dotfiles/nvim/plugins/vim-closetag.vim

call plug#end()
