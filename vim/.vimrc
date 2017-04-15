set nocompatible          " get rid of Vi compatibility mode. SET FIRST!

filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]
set t_Co=256              " enable 256-color mode.
set term=screen-256color

syntax enable             " enable syntax highlighting (previously syntax on).

" set colorscheme
set background=dark
colorscheme solarized
" let g:solarized_termtrans=1
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed

set number                " show line numbers
set laststatus=2          " last window always has a statusline
filetype indent on        " activates indenting for files
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text

autocmd BufNewFile,BufRead *.json set ft=javascript 	" use javascript syntax for json files
autocmd BufNewFile,BufRead *.avsc set ft=javascript	" use javascript syntax for avro schemas
" Treat .md files as Markdown
 autocmd BufNewFile,BufRead *.md setlocal filetype=markdown

:set formatoptions-=r formatoptions-=c formatoptions-=o

" disable arrows
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" enable/disable paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"remap ESC key to jj
:imap jj <ESC>

