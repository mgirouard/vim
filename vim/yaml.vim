" yaml
augroup yaml
  autocmd!
  autocmd BufNew,BufEnter *.yaml,*.yml setlocal filetype=yaml
  autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2
  autocmd FileType yaml setlocal nospell
  autocmd FileType yaml setlocal cursorcolumn
augroup END
