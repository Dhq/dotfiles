silent! call plug#begin()
"Plug 'jelera/vim-javascript-syntax' "Js syntax
"Plug 'pangloss/vim-javascript' "Js highlighting, indentation fix
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'flazz/vim-colorschemes' 
Plug 'nathanaelkane/vim-indent-guides' "highlight callback hells
Plug 'Raimondi/delimitMate' "Add closing quote, bracket etc
Plug 'scrooloose/syntastic' "Lintin
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim' "Emmet
Plug 'mxw/vim-jsx'
Plug 'Rykka/colorv.vim'
Plug 'othree/jspc.vim'
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdcommenter' "Comment and uncoment code 
Plug 'kshenoy/vim-signature' "Display marks on the side
Plug 'dkprice/vim-easygrep'
Plug 'Shougo/neocomplete' "Autocomplete
Plug 'ap/vim-css-color' "Color preview in css
Plug 'itchyny/lightline.vim' "Nicer status bar
Plug 'airblade/vim-gitgutter' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'easymotion/vim-easymotion' 
Plug 'tpope/vim-surround' 
Plug 'tpope/vim-fugitive' 
Plug 'tpope/vim-ragtag' "Faster creating of tags
Plug 'rking/ag.vim' 
Plug 'OrangeT/vim-csharp' 
Plug 'gregsexton/MatchTag' "Matches current html tag
Plug 'duggiefresh/vim-easydir' "Creates folder if not exists, new file
call plug#end()

if has("gui_running")
    set background=dark
    colorscheme tomorrow-night
endif

map <Space> <leader>
nmap <leader>p :CtrlP<CR>
nmap <leader>n :CtrlPBuffer<CR>
nmap <leader>n :CtrlPBuffer<CR>
nmap <S-Enter> O<Esc>
"Indent whole file, move back to cursor pos
nmap <F1> gg=G'' 
" Remove surrounding tag
nmap <F3> yitvatp
nmap <F4> :so $MYVIMRC<CR>
nmap <CR> o<Esc>
nnoremap <CR> :noh<CR><CR>
map <C-n> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>
let g:user_emmet_leader_key='<C-x>'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"
set wildignore+=*/.git/*,*/node_modules/*,*/.DS_Store,*/bin/*,*/obj/*
set wildignore+=*.bmp,*.jpg,*.gif,*.jpeg,*.png,*.dll,*.exe,*.ico

syntax enable " Enable syntax processing
filetype plugin on
runtime macros/matchit.vim "Needed to get matchit to work on html tags?
set nocompatible
set hidden
set noshowmode
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
set vb t_vb= " No beeping or flickering on error
set nobackup "no backup files
set noswapfile
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set laststatus=2 " vim-airline always show
let g:airline_powerline_fonts = 1
let g:syntastic_javascript_checkers = ['eslint']

