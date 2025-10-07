""Allow Shell (BASH) Alias
set shellcmdflag=-ic

""Bling
set t_Co=256
syntax on

""Auto Indentation
set ai

""Show line numbers relative to cursor.
set number relativenumber

""Split below and to the right.
set splitbelow splitright

""Use Unix style line endings.
set ff=unix

""4 space long tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

""Set listchars for list macro
set listchars=tab:>.,trail:.,extends:>,precedes:<

""Enable plugins and indentation syntaxes.
filetype plugin indent on

""Language specific variables.
autocmd FileType html setl tabstop=4| setl shiftwidth=4| setl softtabstop=4| setl t_Co=16
autocmd FileType css setl tabstop=4| setl shiftwidth=4| setl softtabstop=4
autocmd FileType c setl tabstop=4| setl shiftwidth=4| setl softtabstop=4

set undodir=~/.local/share/vim/undodir
