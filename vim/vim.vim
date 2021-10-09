" vim
augroup vim
  autocmd!
  autocmd BufNew,BufEnter *.vim set filetype=vim
  autocmd FileType vim set shiftwidth=2 softtabstop=2 tabstop=2
augroup END
