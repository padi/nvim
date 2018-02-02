" Vim customizations for languages

" https://github.com/posva/vim-vue#my-syntax-highlighting-stops-working-randomly
autocmd FileType vue syntax sync fromstart

" Use existing configs/plugins from html to vue files
" https://github.com/posva/vim-vue#how-can-i-use-existing-configurationplugins-in-vue-files
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html
