" Get some extra stuff from external
" files to keep down the clutter here.
source ~/.vim/vundlerc
source ~/.vim/functions
source ~/.vim/statusline

" gtfo swapfiles
set directory=~/.vim/swp

" sessions
let g:session_autosave=1
let g:session_autoload=1

" syntax highlighting, line numbers
syntax on
colorscheme kosmos
set cursorline
set cursorcolumn
set number
set hlsearch

" ScreenShell settings
let g:ScreenShellExternal=1

" complete options
set completeopt+=menuone
set completeopt-=preview
set pumheight=20

" some toggle switches
noremap <F4> :set number! number?<CR>
noremap <F5> :set hlsearch! hlsearch?<CR>

" 8 space tabs are bad and you should feel bad if you use them
set tabstop=4
set shiftwidth=4

" wrap after 80 chars
set tw=80
set colorcolumn=81

" mouse? in my vim? I don't think so.
set mouse=

" tabs, motherfucker, do you use them?
set hidden
nmap <C-t> :tabnew<CR>
map th :tabfirst<CR>
map tj :tabnext<CR>
map tk :tabprevious<CR>
map tl :tablast<CR>
map tt :tabedit<Space>
map tm :tabmove<Space>

" various stuff
nmap <CR> o<Esc>

set wildmenu
set wildmode=longest:full
set wildignore=*.o,*a,*.py[oc]

" When .vimrc is edited, automatically reload it (stolen from eeemsi)
autocmd! bufwritepost .vimrc source ~/.vimrc

