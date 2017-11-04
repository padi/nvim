" https://github.com/neomake/neomake#configuration
let g:neomake_javascript_enabled_makers = []

" Taken from the rubocop maker, adding --display-style-guide
let g:neomake_ruby_rubocop_maker = {
        \ 'args': ['--format', 'emacs', '--force-exclusion', '--display-style-guide', '--display-cop-names'],
        \ 'errorformat': '%f:%l:%c: %t: %m,%E%f:%l: %m',
        \ 'postprocess': function('neomake#makers#ft#ruby#RubocopEntryProcess')
        \ }
let g:neomake_ruby_enabled_makers = ['rubocop']

" Run Neomake on the current file on every write
autocmd! BufWritePost * Neomake

" Open the window automatically when Neomake is run
" let g:neomake_open_list = 2
