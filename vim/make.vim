" make
augroup make
  autocmd!
  autocmd BufNew,BufEnter Makefile*,*.mk set filetype=make
  autocmd FileType make set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
augroup END
