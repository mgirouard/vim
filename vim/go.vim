" golang
augroup go
  autocmd!
  autocmd BufNew,BufEnter *.go setlocal filetype=go
  autocmd FileType go setlocal noexpandtab
  autocmd FileType go nmap <Leader>F :% ! gofmt<Enter>
  autocmd FileType go nmap <Leader>I :% ! goimports<Enter>
  autocmd FileType go nmap <Leader>T :e %<_test.go<Enter>
augroup END
