" Allows you to have multiple buffers open
set hidden

" Lines of code will not wrap to the next line
set nowrap

" Make backspace behave like other editors
set backspace=indent,eol,start

" Indentation without hard tabs
set expandtab
set shiftwidth=2
set softtabstop=2

" Automatically indent on new lines
set autoindent

" Copy the indentation of the previous line if auto indent doesn't know
set copyindent

" Indenting a line with >> or << will indent or unindent by 4
set shiftwidth=4

" Pressing tab in insert mode will use spaces
set softtabstop=4

" Use spaces instead of tabs
set expandtab

" Highlight matching braces or tags
set showmatch

" Ignore case while searching...
set ignorecase

" ...unless there is a capital letter in the query
set smartcase

" Indent to correct location with tab
set smarttab

" Highlight search matches
set hlsearch

" Search while you enter the query, not after
set incsearch

" More undos
set undolevels=1000

" Vim can set the title of the terminal window
set title

" Use a visual indicator instead of a beep
set visualbell

" Turn off error bells
" set noerrorbells

" Enable syntax highlighting 
syntax enable

" Tell vim that terminal supports 256 colours
set t_Co=256

" Toggle paste mode with F2
" set pasteToggle=<F2>

" Turn on line numbers
set number

" Turn on auto indenting based on the filetype
filetype indent on

" Set up solarized theme
set background=dark
colorscheme solarized

" Colors of CtrlSpace for Solarized Dark
" (MacVim and Console Vim under iTerm2 with Solarized Dark theme)

" Based on Solarized TablineSel
hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold

" Based on Solarized Tabline/TablineFill
" original Normal
" hi CtrlSpaceNormal   guifg=#839496 guibg=#073642 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
" tweaked Normal with darker background in Gui
hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE

" Based on Title
hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold

" Based on PmenuThumb
hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8

" LightLine - make liveline active by default
set laststatus=2

" LightLine - Setttings - set color shceme todo = install pythion and vim powerline fonts before futher configuration
let g:lightline = {
    \ 'colorscheme' : 'solarized',
    \   }

" ### Plugins ###

set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" Let Vundle manage Vundle, this is a requirement
Plugin 'gmarik/Vundle.vim'

" Ctrl-P - using this instead of nerdtree
Plugin 'https://github.com/kien/ctrlp.vim.git'

" Lightline - a lightweight line for vim
Plugin 'itchyny/lightline.vim'

" Solarized dark theme
Plugin 'https://github.com/altercation/vim-colors-solarized.git'

" Landscape Colour theme
Plugin 'itchyny/landscape.vim'

" Surround - surround any text with tags
Plugin 'https://github.com/tpope/vim-surround.git'

" EasyMotion - easily navigate your files by jumping to the highlighted letter when prompted
Plugin 'https://github.com/Lokaltog/vim-easymotion.git'

" Emmet Expanding abbreviations, write HTML and CSS in shorthand
Plugin 'mattn/emmet-vim'

" Enhanced Javascript Syntax Hifhlighting for Vim
Plugin 'jelera/vim-javascript-syntax'

" Vim Javascript - Additional highlighting and fixed indentation
Plugin 'pangloss/vim-javascript'

" Indent Guides - visually displays indenting in Vim
Plugin 'nathanaelkane/vim-indent-guides'

" DelimitMate - Automatically add closing quote, bracket or other counterpart character
Plugin 'Raimondi/delimitMate'

" Syntastic - Linting integration, checks files on startup and save, requires external linter
Plugin 'scrooloose/syntastic'

" YouCompleteMe - auto complete for code completion - THIS IS A MORE COMPLEX INSTALL, WILL COMPLETE LATER


" CtrlSpace = Workspace manager, manage buffers and tabs more easily
Plugin 'szw/vim-ctrlspace'

" #### BUNDLES ####

Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/nerdcommenter'

call vundle#end()

" ### KEY BINDINGS ###

" Press ctrl-c to insert a new line in insert mode
imap <C-c> <CR><Esc>0
