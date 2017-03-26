syntax on
set encoding=utf8
set t_Co=256
set background=dark
colorscheme monokai



set number
set relativenumber
set showcmd
filetype indent on
set showmatch


" indentation set up
set noexpandtab " tabs ftw
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set autoindent " automatically set indent of new line

filetype indent on

" show whitespaces
" set list
" set listchars=tab:>-




" mapping new escape type from insert mode
inoremap df <esc>

" mapping new leader key
let mapleader=","

" default configurations for searching files
set path+=**
set wildmenu


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'terryma/vim-multiple-cursors'

" html / templates
Plugin 'mattn/emmet-vim', { 'for': 'html' } " emmet support for vim - easily create markdup wth CSS-like syntax
Plugin 'gregsexton/MatchTag', { 'for': 'html' } " match tags in html, similar to paren support
Plugin 'othree/html5.vim', { 'for': 'html' } " html5 support
Plugin 'mustache/vim-mustache-handlebars' " mustach support
Plugin 'digitaltoad/vim-jade', { 'for': ['jade', 'pug'] } " jade support

" JavaScript
Plugin 'gavocanov/vim-js-indent', { 'for': 'javascript' } " JavaScript indent support
Plugin 'moll/vim-node', { 'for': 'javascript' } " node support
Plugin 'othree/yajs.vim', { 'for': 'javascript' } " JavaScript syntax plugin
Plugin 'othree/es.next.syntax.vim', { 'for': 'javascript' } " ES6 and beyond syntax
Plugin 'mxw/vim-jsx', { 'for': ['jsx', 'javascript'] } " JSX support

" TypeScript
" Plug 'jason0x43/vim-tss', { 'for': 'typescript', 'do': 'npm install' }
Plugin 'Quramy/tsuquyomi', { 'for': 'typescript', 'do': 'npm install' } " extended typescript support - works as a client for TSServer
Plugin 'clausreinke/typescript-tools.vim', { 'for': 'typescript' } " typescript tools
Plugin 'leafgarland/typescript-vim', { 'for': 'typescript' } " typescript support

" Elm
Plugin 'lambdatoast/elm.vim', { 'for': 'elm' }

" styles
Plugin 'wavded/vim-stylus', { 'for': ['stylus', 'markdown'] } " markdown support
Plugin 'groenewege/vim-less', { 'for': 'less' } " less support
Plugin 'ap/vim-css-color', { 'for': ['css','stylus','scss'] } " set the background of hex color values to the color
Plugin 'hail2u/vim-css3-syntax', { 'for': 'css' } " CSS3 syntax support
Plugin 'cakebaker/scss-syntax.vim', { 'for': 'scss' } " sass scss syntax support

" markdown
Plugin 'itspriddle/vim-marked', { 'for': 'markdown', 'on': 'MarkedOpen' } " Open markdown files in Marked.app - mapped to <leader>m
Plugin 'tpope/vim-markdown', { 'for': 'markdown' } " markdown support

" language-specific plugins
Plugin 'elzr/vim-json', { 'for': 'json' } " JSON support
Plugin 'Shougo/vimproc.vim', { 'do': 'make' } " interactive command execution in vim
Plugin 'fatih/vim-go', { 'for': 'go' } " go support
Plugin 'timcharper/textile.vim', { 'for': 'textile' } " textile support
" Plug 'tclem/vim-arduino' " arduino support - compile wihtout needing to open the arduino IDE



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

