" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  " autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby nmap <buffer> ,<Enter> <Plug>(seeing-is-believing-mark-and-run)
  " autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby nmap <buffer> ,4r <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby nmap <buffer> ,5r <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)

  " Clearing the ruby output generated from seeing-is-believing
  " https://github.com/hwartig/vim-seeing-is-believing/issues/7
  " This option doesn't include the bottom (>>) results (stdout)
  " nmap <F7> :%s/\s\+# =>.*$//g<CR>
  " xmap <F7> :s/\s\+# =>.*$//g<CR>
  " This option includes >> and => results
  nmap <F7> :%s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :%s#\($\n\s*\)\+\%$##<CR>
  xmap <F7> :s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :'<,'>s#\($\n\s*\)\+\%$##<CR>
augroup END
