" Save and restore manual folds when we exit a file

augroup remember_folds
  autocmd!
  au BufWinLeave, BufLeave ?* silent! mkview
  au BufWinEnter           ?* silent! loadview
augroup END
