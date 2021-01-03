call plug#begin('~/.vim/plugged')
"call plug#begin('c:\users\eduardo\vimfiles\plugged')
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'maralla/completor.vim', { 'do': 'pip3 install jedi' }
Plug 'davidhalter/jedi-vim', { 'do': 'pip3 install jedi' }
Plug 'w0rp/ale', { 'do': 'pip3 install flake8 isort yapf' }
Plug 'mileszs/ack.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-fugitive'
Plug 'Townk/vim-autoclose'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'skywind3000/asyncrun.vim'
Plug 'vim-scripts/Wombat'
Plug 'sukima/xmledit'
call plug#end()



" Desabilitar o mouse:
" set mouse=

set nocp
" Desabilitar menus:
set guioptions-=m
set guioptions-=r
set guioptions-=T

" Desabilitar backups:
set nobackup
set noswapfile
set nowritebackup

" Cores e tema:
colorscheme wombat
filetype on
syntax on

" Clipboard do sistema:
set clipboard=unnamed

" Tabs por espaços:
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set ai

" Indentação:
filetype plugin indent on
set autoindent
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null

" Régua, quebra e número de linhas:
set linebreak
set number
set ruler
set nowrap
set ve=all
set ai
set backspace=indent,eol,start

set ttyfast



" Busca:
set hlsearch
set ignorecase
set incsearch
" Fonte e janela:
set guifont=consolas
set encoding=utf-8
set lines=33 columns=142
set wildmenu


"set pythonthreedll=C:\Python36_64\python36.dll
"let g:completor_python_binary = 'C:\Python36_64'
"let g:jedi#completions_enabled = 0

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Navegação entre abas:
map <C-Tab> :tabnext<CR>
map <S-Tab> :tabprevious<CR>

nmap <F8> :TagbarToggle<CR>
"nerdtree
map <F7> :NERDTreeToggle<CR>

"" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='sol'

"asyncrun
let g:asyncrun_open = 12
map <F5> :AsyncRun -raw python %<CR>

"ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
