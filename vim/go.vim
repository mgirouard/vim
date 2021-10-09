" golang
augroup go
  autocmd!
  autocmd BufNew,BufEnter *.go set filetype=go
  autocmd FileType go set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
  autocmd FileType go nmap <Leader>F :% ! gofmt<Enter>
  autocmd FileType go nmap <Leader>I :% ! goimports<Enter>
  autocmd FileType go nmap <Leader>T :e %<_test.go<Enter>
augroup END
