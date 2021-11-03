" make
augroup make
  autocmd!
  autocmd BufNew,BufEnter Makefile*,*.mk setlocal filetype=make
  autocmd FileType make setlocal noexpandtab
augroup END
