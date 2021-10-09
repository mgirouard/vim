" yaml
augroup yaml
  autocmd!
  autocmd BufNew,BufEnter *.yaml,*.yml set filetype=yaml
  autocmd FileType yaml set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  autocmd FileType yaml set nospell
  autocmd FileType yaml set cursorcolumn
augroup END
