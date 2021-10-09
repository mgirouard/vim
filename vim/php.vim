" php
augroup php
  autocmd!
  autocmd BufNew,BufEnter *.php set filetype=php
  autocmd FileType php set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
augroup END
