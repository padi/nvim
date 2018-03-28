" Vim customizations for languages

" https://github.com/posva/vim-vue#my-syntax-highlighting-stops-working-randomly
autocmd FileType vue syntax sync fromstart
autocmd BufEnter,BufNewFile,BufRead *.vue syntax sync fromstart

" Don't hide quotes in .json files
" autocmd Filetype json setlocal syntax=javascript
" autocmd BufEnter,BufNewFile,BufRead *.json setlocal syntax=javascript

" Use existing configs/plugins from html to vue files
" https://github.com/posva/vim-vue#how-can-i-use-existing-configurationplugins-in-vue-files
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html

" https://github.com/vim-ruby/vim-ruby/wiki/VimRubySupport#customising
" This enables the following shortcut. Say I’m writing an if-statement. Having typed:
"
" ```ruby
" if name == "John"[<--cursor]
" ```
"
" I can hit Shift-Enter and will get:
"
" ```ruby
" if name == "John"
"   [<--cursor]
" end
" ```
"  imap <S-CR> <CR><CR>end<Esc>-cc
"  if !exists( "*RubyEndToken" )
"
"    function RubyEndToken()
"      let current_line = getline( '.' )
"      let braces_at_end = '{\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
"      let stuff_without_do = '^\s*\(class\|if\|unless\|begin\|case\|for\|module\|while\|until\|def\)'
"        let with_do = 'do\s*\(|\(,\|\s\|\w\)*|\s*\)\?$'
"
"        if match(current_line, braces_at_end) >= 0
"          return "\<CR>}\<C-O>O"
"        elseif match(current_line, stuff_without_do) >= 0
"          return "\<CR>end\<C-O>O"
"        elseif match(current_line, with_do) >= 0
"          return "\<CR>end\<C-O>O"
"        else
"          return "\<CR>"
"        endif
"      endfunction
"
"  endif
"
"  imap <S-CR> <CR> <C-R>=RubyEndToken()<CR>
" imap <S-CR> <CR><CR>end<Esc>-cc

