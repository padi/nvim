" Vim customizations for languages

" Use existing configs/plugins from html to vue files
" https://github.com/posva/vim-vue#how-can-i-use-existing-configurationplugins-in-vue-files
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html
