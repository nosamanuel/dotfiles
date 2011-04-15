" Plugins
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

" General settings
set number
set title
set mouse=a
filetype plugin on
syntax on

" Keymappings
" let mapleader=","
map <D-r> :CommandT<CR>
map <D-N> :NERDTreeToggle<CR>

"  Autocomplete
set wildmenu
set wildmode=longest,list
set ofu=syntaxcomplete#Complete

" Navigation
let NERDTreeShowBookmarks=1

" GUI settings
if has("gui_running")
    set colorcolumn=80
    set guioptions=egmrt
endif

" Python settings
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set expandtab
autocmd FileType python set smarttab
autocmd FileType python set ai
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python map <F5> :w<CR>:!screen -x ipython -X stuff $'\%reset\ny\n\%cd %:p:h\n\%run %:t\n'<CR><CR>

" Use dark solarized theme
set background=dark
colorscheme solarized

