" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

syntax on
colorscheme distinguished
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim' "Vundle, plugin manager
Plugin 'jelera/vim-javascript-syntax' "Js syntax
Plugin 'pangloss/vim-javascript' "Js highlighting, indentation fix
Plugin 'nathanaelkane/vim-indent-guides' "highlight callback hells
Plugin 'Raimondi/delimitMate' "Add closing quote, bracket etc
Plugin 'scrooloose/syntastic' "Lintin
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim' "Emmet
Plugin 'https://github.com/kien/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter' "Comment and uncoment code
Plugin 'Shougo/neocomplete.vim'
Plugin 'kshenoy/vim-signature'
Plugin 'dkprice/vim-easygrep'
Plugin 'ap/vim-css-color' "Color preview in css

nmap <leader>p :CtrlP<CR>
nmap <leader>n :CtrlPBuffer<CR>
nnoremap <leader>s :noh<return>
map <C-n> :NERDTreeToggle<CR>
let g:user_emmet_leader_key='<Tab>'
map <Space> <leader>
set hidden
let g:neocomplete#enable_at_startup = 1

syntax enable " Enable syntax processing
set nowrap " Lines of code will not wrap to the next line
set backspace=indent,eol,start " Make backspace behave like other editors
set autoindent " Automatically indent on new lines
set copyindent " Copy the indentation of the previous line if auto indent doesn't know what
set shiftwidth=4 " Indenting a line with >> or << will indent or un-indent by 4
set softtabstop=4 " Pressing tab in insert mode will use 4 spaces
set expandtab " Use spaces instead of tabs
set showmatch " Highlight matching braces/tags
set ignorecase " Ignore case when searching
set smartcase " ...unless there's a capital letter in the query
set smarttab " Indent to correct location with tab
set hlsearch " Highlight search matches
set incsearch " Search while you enter the query, not after
set undolevels=1000 " More undos
set title " Vim can set the title of the terminal window
set t_Co=256 " Tell vim that your terminal supports 256 colors
set pastetoggle=<F2> " Toggle paste mode with F2
set number " Line numbers
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup "no backup files
set noswapfile
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
" Just a stupid comment
