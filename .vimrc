silent! call plug#begin()
"General
Plug 'flazz/vim-colorschemes' 
Plug 'nathanaelkane/vim-indent-guides' "highlight callback hells
Plug 'jiangmiao/auto-pairs' "Add closing quote, bracket etc
Plug 'scrooloose/syntastic' "Lintin
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter' "Comment and uncoment code 
Plug 'kshenoy/vim-signature' "Display marks on the side
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-surround' 
Plug 'rking/ag.vim' 
Plug 'editorconfig/editorconfig-vim' "Matches current html tag
Plug 'duggiefresh/vim-easydir' "Creates folder if not exists, new file
"HTML/CSS
Plug 'mattn/emmet-vim' "Emmet
Plug 'Rykka/colorv.vim'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color' "Color preview in css
Plug 'tpope/vim-ragtag' "Faster creating of tags
Plug 'gregsexton/MatchTag' "Matches current html tag
"JS
Plug 'othree/jspc.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
"Git
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive' 
"Other 
Plug 'plasticboy/vim-markdown'
Plug 'OrangeT/vim-csharp' 
call plug#end()


map <Space> <leader>
nmap <leader>p :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>
nmap <S-Enter> O<Esc>
"Indent whole file, move back to cursor pos
nmap <F1> gg=G'' 
" Remove surrounding tag
nmap <F3> yitvatp
nmap <F4> :so $MYVIMRC<CR>
nnoremap <CR> :noh<CR><CR>
nnoremap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nnoremap <C-q> :bdelete<CR>
nmap ,r :NERDTreeFind<CR>
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
let g:indent_guides_start_level = 2

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
set number " Line numbers
set vb t_vb= " No beeping or flickering on error
set nobackup "no backup files
set noswapfile
set encoding=utf-8   
let g:syntastic_javascript_checkers = ['eslint']

"Airline
set laststatus=2 " vim-airline always show
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"Gvim settings
set lines=10000 columns=10000 "Start gvim maximized
au GUIEnter * simalt ~x
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

if has("gui_running")
    set background=dark
    colorscheme tomorrow-night
    set guifont=InconsolataForPowerline:h11
endif
