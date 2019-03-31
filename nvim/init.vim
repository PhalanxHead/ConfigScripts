" init.vim

" Set up Vundle
set nocompatible            " Disable compatibility to old-time vi
filetype off                " required
" set the runtime path to include Vundle and initialize
if has('unix')
    set rtp+=~/.config/nvim/bundle/Vundle.vim
endif

if has('win32')
    set rtp+=%USERPROFILE%/AppData/Local/nvim/bundle/Vundle.vim
endif

call vundle#begin()            " required

Plugin 'VundleVim/Vundle.vim'  " required

Plugin 'airblade/vim-gitgutter'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'rhysd/nyaovim-markdown-preview'
Plugin 'rhysd/nyaovim-popup-tooltip'


" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on  " allows auto-indenting depending on file type

set showmatch               " Show matching brackets.
set ignorecase              " Do case insensitive matching
set hlsearch                " highlight search results
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                   " set an 80 column border for good coding style

" Toggle Spelling
nnoremap <leader>s :set invspell<CR>

" colorscheme
colorscheme tir_black

let g:vimwiki_list = [{'path': '~/doc/wiki/', 'path_html': '~/doc/wiki/html/'}]

" set g:markdown_preview_auto=1   " Start MD Preview Automatically
