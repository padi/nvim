" Enable seeing-is-believing mappings only for Ruby
augroup seeingIsBelievingSettings
  autocmd!

  " autocmd FileType ruby nmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby nmap <buffer> ,<Enter> <Plug>(seeing-is-believing-mark-and-run)
  " autocmd FileType ruby xmap <buffer> <Enter> <Plug>(seeing-is-believing-mark-and-run)
  autocmd FileType ruby xmap <buffer> ,<Enter> <Plug>(seeing-is-believing-mark-and-run)

  autocmd FileType ruby nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby nmap <buffer> ,4r <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
  autocmd FileType ruby imap <buffer> <F4> <Plug>(seeing-is-believing-mark)

  autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
  autocmd FileType ruby nmap <buffer> ,5r <Plug>(seeing-is-believing-run)
  autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing-is-believing-run)

  " Based on mappings above: Select, mark and run all lines
  autocmd FileType ruby nmap <buffer> <F6> ggVG<F4><F5>
  autocmd FileType ruby imap <buffer> <F6> <Esc>ggVG<F4><F5>

  " Clearing the ruby output generated from seeing-is-believing
  " https://github.com/hwartig/vim-seeing-is-believing/issues/7
  " This option doesn't include the bottom (>>) results (stdout)
  nmap <F7> :%s/\s\+# =>.*$//g<CR>
  xmap <F7> :s/\s\+# =>.*$//g<CR>
  " This option includes >> and => results
  " nmap <F7> :%s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :%s#\($\n\s*\)\+\%$##<CR>
  " xmap <F7> :s/\s\+# =>.*$\\|^#\s[>!\~]>\(\s.*\)\?$//g \| :'<,'>s#\($\n\s*\)\+\%$##<CR>
augroup END

" ===== Seeing Is Believing =====
" Assumes you have a Ruby with SiB available in the PATH
" If it doesn't work, you may need to `gem install seeing_is_believing -v 3.0.0.beta.6`

" Annotate every line
"  nmap <leader>b :%!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;

" Annotate marked lines
"  nmap <leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;

" Remove annotations
" nmap <leader>c :%.!seeing_is_believing --clean<CR>;

" Mark the current line for annotation
"  nmap <leader>m A # => <Esc>

" Mark the highlighted lines for annotation
  vmap <leader>m :norm A # => <Esc>
