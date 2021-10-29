""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open NERDTree on right ride
let g:NERDTreeWinPos = "right"

" Show dotfiles in NERDTree
let NERDTreeShowHidden=1

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Shortcuts NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" NERDTree icons settings
set encoding=UTF-8

" Airline theme
let g:airline_theme='base16_gruvbox_dark_medium'

" Airline smart tab line
let g:airline#extensions#tabline#enabled = 1

" Airline fonts
let g:airline_powerline_fonts = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Main Coloring Configurations
syntax on

" Colorscheme
colorscheme gruvbox
" Enable True Color Support (ensure you're using a 256-color enabled $TERM, e.g. xterm-256color)
set termguicolors

" Mouse and clipboard settings
set mouse=a
set clipboard+=unnamedplus

" Font 
set guifont=MesloLGS_NF:h17
