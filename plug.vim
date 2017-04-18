" ----------------------------------------
" Plug
" ----------------------------------------

if has('nvim')
  " Use python plugins on OSX e.g. deoplete
  " http://ricostacruz.com/til/neovim-with-python-on-osx
  let g:python2_host_prog = '/usr/local/bin/python'
  let g:python3_host_prog = '/usr/local/bin/python3'
endif


" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes

" Traversing files
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Search
Plug 'rking/ag.vim'

" Editing
Plug 'tpope/vim-surround'

" Commmand Line
Plug 'janko-m/vim-test'
Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()
