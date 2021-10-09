" markdown
augroup markdown
  autocmd!
  autocmd BufNew,BufEnter *.md set filetype=markdown
  autocmd FileType markdown set nocindent
  autocmd FileType markdown set spell
augroup END
