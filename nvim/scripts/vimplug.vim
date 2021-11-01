" Intall or check plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" Command shortcut to update plugins
command! PU PlugUpdate | PlugUpgrade
