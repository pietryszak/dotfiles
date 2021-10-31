""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Gruvbox color scheme
Plug 'morhetz/gruvbox'

" NerdTree
Plug 'preservim/nerdtree'

" NERDTree Git status
Plug 'Xuyuanp/nerdtree-git-plugin'
" Nerd Commenter
Plug 'preservim/nerdcommenter'

" Startpage on vim
Plug 'mhinz/vim-startify'

" Airline
Plug 'vim-airline/vim-airline'
 	
" Airline themes
Plug 'vim-airline/vim-airline-themes'

Plug 'powerline/powerline'

" NERDTRee icons LOAD AT LAST !
Plug 'ryanoasis/vim-devicons'

" Color for icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Initialize plugin system
call plug#end()
