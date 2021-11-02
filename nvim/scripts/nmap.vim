""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Focus on NERDTRee
noremap <leader>n :NERDTreeFocus<CR>
" Show/hide NERDTree
nnoremap <C-t> :NERDTreeToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tabs control
let g:airline#extensions#tabline#buffer_idx_mode = 1

" Tabs 1-10   
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0

" Prev/Next Tab
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>= <Plug>AirlineSelectNextTab

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Fzf
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Search Vim Buffers
nnoremap <silent> <Leader>b :Buffers<CR>

" Open Fzf
nnoremap <silent> <C-f> :Files<CR>

" Git files
nnoremap <silent> <Leader>gf :GFiles <CR>

" Ripgrep results
nnoremap <silent> <Leader>f :Rg<CR>

" Lines in current buffer
nnoremap <silent> <Leader>/ :BLines<CR>

" Vim marks
nnoremap <leader>m :Marks<CR>

" Git commits
nnoremap <silent> <Leader>g :Commits<CR>

" Search in help files in system
nnoremap <silent> <Leader>H :Helptags<CR>

" Files history
nnoremap <silent> <Leader>hh :History<CR>

" Command history
nnoremap <silent> <Leader>h: :History:<CR>

" Search history
nnoremap <silent> <Leader>h/ :History/<CR> 

"Search in all open tabs
nnoremap <silent> <Leader>l :Lines<CR>
