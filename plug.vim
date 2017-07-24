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
Plug 'skwp/greplace.vim'
Plug 'henrik/vim-indexed-search'

" Autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Editing
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/tpope-vim-abolish'

" Commmand Line
Plug 'janko-m/vim-test'
Plug 'tpope/vim-fugitive'

" Ruby
Plug 'hwartig/vim-seeing-is-believing'

" Javascript
Plug 'Shutnik/jshint2.vim'

" Backround
Plug 'wakatime/vim-wakatime'

" Syntax Plugins
Plug 'kchmck/vim-coffee-script'

" Initialize plugin system
call plug#end()
