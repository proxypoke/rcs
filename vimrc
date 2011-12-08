" syntax highlighting, line numbers
syntax on
set number
set hlsearch

" some toggle switches
noremap <F4> :set number! number?<CR>
noremap <F5> :set hlsearch! hlsearch?<CR>

" wrap after 72 chars
set tw=72

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

" filetype options
filetype plugin indent on

" PYTHON SETTINGS
au FileType python setlocal tabstop=4
au FileType python setlocal shiftwidth=4
au FileType python setlocal expandtab
au FileType python setlocal autoindent
au FileType python setlocal smartindent

" C++ SETTINGS
au FileType cpp setlocal tabstop=4
au FileType cpp setlocal shiftwidth=4
au FileType cpp setlocal autoindent
au FileType cpp setlocal smartindent

" C SETTINGS
au FileType c setlocal tabstop=4
au FileType c setlocal shiftwidth=4
au FileType c setlocal autoindent
au FileType c setlocal smartindent
