" .vimrc

" -------------- mapping -------------- 
" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
"Set mapleader
let mapleader = ","
"Fast reloading of the .vimrc
map  ss :source ~/.vimrc
"Fast editing of .vimrc
map  ee :e ~/.vimrc
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 


" -------------- Vim Bundle -------------- 
set nocompatible               " be iMproved, required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Plugins
" github ---------------------------------
" directory
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'vim-scripts/tComment'
Bundle 'vim-scripts/mru.vim'
Bundle 'terryma/vim-multiple-cursors'

" helper
Bundle 'mattn/emmet-vim'
Bundle 'tpope/vim-repeat'
Bundle 'jiangmiao/auto-pairs'
Bundle 'tpope/vim-surround'
" Bundle '907th/vim-auto-save'

" color schemes
Bundle '29decibel/codeschool-vim-theme'
Bundle 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
Bundle 'trusktr/seti.vim'

" language
"Bundle 'pangloss/vim-javascript'

" setting
Bundle 'othree/html5.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" -------------- General Setting -------------- 
set tabstop=2       " Number of spaces that a <Tab> in the file counts for.
set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.
set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.
set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.
set showcmd         " Show (partial) command in status line.
set number          " Show line numbers.
set guifont=Courier\ New:h18  "Font size.
set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.
set nohlsearch        " When there is a previous search pattern, highlight all
                    " its matches.
set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.
set ignorecase      " Ignore case in search patterns.
set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.
set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.
set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).
set autowrite       " auto save file when open a new file.
set autochdir       " auto change working directory based on current opening file.
set autoread        " auto reload file on change

" set textwidth=79    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.
set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode. 
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)
set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.
set background=light " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
set mouse=a         " Enable the use of the mouse.
set shortmess+=A    " A don't give the 'ATTENTION' message when an existing swap file is found.
set noswapfile      " Disable VIM to create swap file
" set scrolljump=5
" set scrolloff=3
" execute pathogen#infect()
syntax on


" -------------- mapping -------------- 
" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1
"Set mapleader
let mapleader = ","
"Fast reloading of the .vimrc
map  ss :source ~/.vimrc
"Fast editing of .vimrc
map  ee :e ~/.vimrc
"When .vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc 


" -------------- nerdtree -------------- 
" toggle nerdtree
nnoremap <F5> :NERDTreeToggle<cr>   
" autocmd vimenter * NERDTree    " show nerdtree on open
let g:NERDTreeWinSize = 22


" -------------- auto save -------------- 
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1  " do not display the auto-save notification
" let g:auto_save_events = ['InsertLeave', 'TextChanged']  " other options: 'CursorHold' 

" -------------- color theme -------------- 
syntax enable
set background=dark

" /// light themes ///
"color summerfruit
"color taqua
"color oceanlight
"color pyte

" /// dark themes ///
"color busybee
color underwater
"color codeschool
"color solarized
"color seti
"color ir_black
"color jelleybeans
"color wombat
"color phd


" -------------- emmet -------------- 
let g:user_emmet_mode='a'               " enable all function in all mode.
let g:user_emmet_leader_key='<C-Z>'             " redefine trigger key to 'ctrl z ,'
