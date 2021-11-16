""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Gruvbox-  color scheme
Plug 'morhetz/gruvbox'

" NerdTree - file manager for vim
Plug 'preservim/nerdtree'

" NERDTree - Git status on file manager
Plug 'Xuyuanp/nerdtree-git-plugin'

" Nerd Commenter - comments tools
Plug 'preservim/nerdcommenter'

" Startpage on vim 
Plug 'mhinz/vim-startify'

" Airline - statusbar
Plug 'vim-airline/vim-airline'
 	
" Airline themes
Plug 'vim-airline/vim-airline-themes'

" Vim-fugative git plugin
Plug 'tpope/vim-fugitive'

" Vim Coc - vscode like code language editing support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Vim open url - open url in default browser
Plug 'dhruvasagar/vim-open-url'

" AutoSave
Plug 'Pocco81/AutoSave.nvim'

" Fzd finder for vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" NERDTRee icons LOAD AT LAST !
Plug 'ryanoasis/vim-devicons'

" Color for icons
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Initialize plugin system
call plug#end()
