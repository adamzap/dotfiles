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

"folding
set foldmethod=indent               "fold on indents
set commentstring=\ #\ %s           "fold marker
set foldlevel=200                   "start with all folds open

"ui
set bg=dark
set ruler
set listchars=tab:>-,trail:_ list   "list trailing characters
set number                          "line numbers
set visualbell                      "audio bell is evil
set showmatch                       "blink matching bracket, etc

"dirs for backup and swp files
set backupdir=~/.vim_tmp
set directory=~/.vim_tmp

"other
set autoindent                      "copy indent level on new lines
set shiftround                      "round indents to sw
set hidden                          "protect my buffers
set history=1000                    "long history because why not
set scrolloff=4                     "cursor context
set backspace=indent,eol,start      "intuitive backspacing

filetype on
filetype plugin on
filetype indent on

let Tlist_Ctags_Cmd='/opt/local/bin/ctags'

au FileType xml exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"
au FileType dat exe ":silent 1,$!xmllint --format --recover - 2>/dev/null"

"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
