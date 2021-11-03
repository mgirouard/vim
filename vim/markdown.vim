" markdown
augroup markdown
  autocmd!
  autocmd BufNew,BufEnter *.md setlocal filetype=markdown
  autocmd FileType markdown setlocal nocindent
  autocmd FileType markdown setlocal spell
augroup END
