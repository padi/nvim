" ----------------------------------------
" Plug
" ----------------------------------------

if has('nvim')
  " Use python plugins on OSX e.g. deoplete
  " http://ricostacruz.com/til/neovim-with-python-on-osx
  " TODO: I have python and python2. Resolve this.
  let g:python2_host_prog  = '/usr/local/bin/python2'
  let g:python3_host_prog = '/usr/local/bin/python3'
  let g:ruby_host_prog = '~/.rbenv/versions/2.6.3/bin/neovim-ruby-host'
endif


" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')
" Make sure you use single quotes

" Traversing files
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Search
Plug 'mileszs/ack.vim' " Replacement for: Plug 'rking/ag.vim'
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
Plug 'vim-ruby/vim-ruby'
Plug 'hwartig/vim-seeing-is-believing'
Plug 'tpope/vim-bundler'

" Backround
Plug 'wakatime/vim-wakatime'

" Syntax Plugins
Plug 'isRuslan/vim-es6'
Plug 'kchmck/vim-coffee-script'
Plug 'posva/vim-vue'
" Try jshint in neomake for now
" Plug 'Shutnik/jshint2.vim'
Plug 'neomake/neomake'

" Display vertical lines at each indentation level
Plug 'Yggdroot/indentLine'

" Initialize plugin system
call plug#end()
