filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

syn on                              "syntax highlighting

"tabs
set ts=4                            "tab width
set sw=4                            "shift width (>)
set softtabstop=4                   "tab width
set expandtab                       "use spaces for tabs

"search
set hlsearch                        "hightlight search terms
set ignorecase                      "ignore case in search
set incsearch                       "highlight search terms as they are typed
set smartcase                       "case-sensitive search if caps in term
set gdefault

"folding
set foldmethod=indent               "fold on indents
set commentstring=\ #\ %s           "fold marker
set foldlevel=200                   "start with all folds open

"ui
set bg=dark
set ruler
set list
"set listchars=tab:>-,trail:_ list   "list trailing characters
set listchars=tab:▸\ ,trail:·,nbsp:· list "list trailing characters
set number                          "line numbers
set visualbell                      "audio bell is evil
set showmatch                       "blink matching bracket, etc

"dirs for backup and swp files
set backupdir=~/.vim_tmp
set directory=~/.vim_tmp
set undodir=~/.vim_tmp

"other
set encoding=utf-8
set showmode
set showcmd
set laststatus=2
set ttyfast
set undofile
set nocompatible
set modelines=0
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=80
set autoindent                      "copy indent level on new lines
set shiftround                      "round indents to sw
set hidden                          "protect my buffers
set history=1000                    "long history because why not
set scrolloff=4                     "cursor context
set backspace=indent,eol,start      "intuitive backspacing

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>q gqip

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

map <leader>n :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

"au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au FileType xsd exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au FileType dat exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

command! W :w

cmap w!! w !sudo tee % >/dev/null

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

color molokai
