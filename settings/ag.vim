" Open the Ag command and place the cursor into the quotes
nmap ,ag :Ag ""<Left>
nmap ,af :AgFile ""<Left>

" Recommended compatibility config for Ag, since rking/ag.vim is deprecated.
" See: https://github.com/rking/ag.vim/issues/124#issuecomment-227038003
let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
