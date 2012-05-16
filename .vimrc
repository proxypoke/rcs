" syntax highlighting, line numbers
syntax on
colorscheme slate
set cursorline
set number
set hlsearch

" some toggle switches
noremap <F4> :set number! number?<CR>
noremap <F5> :set hlsearch! hlsearch?<CR>

" wrap after 72 chars
set tw=79
set colorcolumn=80

" fuck off arrow keys, nobody likes you.
map <Up> <nop>
imap <Up> <nop>
map <Down> <nop>
imap <Down> <nop>
map <Left> <nop>
imap <Left> <nop>
map <Right> <nop>
imap <Right> <nop>

" mouse? in my vim? I don't think so.
set mouse=

" tabs, motherfucker, do you use them?
nmap <C-t> :tabnew<CR>
map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprevious<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tm :tabmove<Space>

" various stuff
nmap <CR> o<Esc>

" filetype options
filetype plugin indent on
