" Initial settings that you don't know where to put should be here

" Cursor settings
set cursorline " underline current line where cursor is
set ruler " coordinates of current cursor
set mouse=a

" Automatically remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e
