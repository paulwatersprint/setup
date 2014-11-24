" Allows you to have multiple buffers open
set hidden

" Lines of code will not wrap to the next line
set nowrap

" Make backspace behave like other editors
set backspace=indent,eol,start

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
set pasteToggle=<F2>

" ### Plugins ###

set rtp+=~/vimfiles/bundle/Vundle.vim/
let path='~/vimfiles/bundle'
call vundle#begin(path)

" Let Vundle manage Vundle, this is a requirement
Plugin 'gmarik/Vundle.vim'

" Ctrl-P - using this instead of nerdtree
Plugin 'https://github.com/kien/ctrlp.vim.git'

" #### BUNDLES ####

Bundle 'rstacruz/sparkup'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Shougo/neocomplete.vim'

call vundle#end()
