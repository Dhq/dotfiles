silent! call plug#begin()
" Colorschemes
Plug 'cocopon/iceberg.vim'
" Plug 'flazz/vim-colorschemes'
" Plug 'chriskempson/base16-vim'
" Plug 'rakr/vim-one'
"General
Plug 'jiangmiao/auto-pairs' "Add closing quote, bracket etc
"Plug 'scrooloose/syntastic' "Lintin
"Plug 'junegunn/vim-emoji'
" Plug 'blueyed/vim-diminactive' "Dim inactive windows
" Plug 'scrooloose/nerdtree'
" Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary' "Comment and uncoment code
Plug 'kshenoy/vim-signature' "Display marks on the side
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'editorconfig/editorconfig-vim'
" Plug 'honza/vim-snippets'
" Plug 'mhinz/vim-startify'
" Plug 'wincent/loupe' "Better in-file searching
Plug 'christoomey/vim-system-copy'
Plug 'sheerun/vim-polyglot' "Bunch of lang syntaxes
" Plug 'ervandew/supertab'
"HTML/CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'gregsexton/MatchTag' "Matches current html tag
Plug 'alvan/vim-closetag'
"JS
Plug 'othree/yajs.vim', { 'for': 'javascript' } "Js syntax
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
call plug#end()

"--- Standard mappings
map <Space> <leader>
nnoremap <leader><tab> <C-^>
nmap Q q
nmap W w
nnoremap K <nop>
noremap Y y$
nmap <S-Enter> O<Esc>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cN<CR>

" --- Leader mappings ---
nmap <leader><leader> <C-^>
map <leader>a :Ag<space>
map <leader>e :silent !open .<CR>
map <leader>f :NERDTreeFind<CR>
let g:ctrlp_map = '<leader>p'
nmap <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>ow :only<CR>
map <leader> :w<CR>
map <leader>ob :BufOnly<CR>
map <leader>dg :diffget<CR>
map <leader>dp :diffput<CR>
nmap <leader>sl :s/<c-r>=expand("<cword>")<cr>//g<Left><Left>
nmap <leader>sf :%s/<c-r>=expand("<cword>")<cr>//g<Left><Left>
map <leader>w :w<CR>
map <leader>x :ccl<CR>
map <leader><Up> :lprev<CR>
map <leader><Down> :lnext<CR>
nnoremap <silent> <Leader>r :call CycleNumbers ()<CR>
nnoremap <leader>q :bp\|bd #<CR>
noremap <leader><Left> :diffget //2<CR>
noremap <leader><Right> :diffget //3<CR>

"--- Function mappings ---
nmap <F1> gg=G''
inoremap <F2> <c-o>:w<cr>
nmap <F3> yitvatp
nmap <F4> :so $MYVIMRC<CR>
nnoremap <F7> :let @+=expand("%:p")<CR>
nmap <F5> :set wrap linebreak nolist<CR>

colorscheme iceberg
syntax enable " Enable syntax processing
filetype plugin on
" runtime macros/matchit.vim " % work for xml/html tags as well

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

set nocompatible
set hidden "OK to hide buffers without saving them
set noshowmode
set nofoldenable "Dont fold automatically
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
set visualbell t_vb= " No beeping or flickering on error
set nobackup "no backup files
set noswapfile
set encoding=utf-8
set diffopt+=vertical
set cursorline "Highligh current line
set relativenumber
set number
set guicursor=
set gcr=n:blinkon0
set formatoptions+=j "Clever joining
set formatoptions+=n "Clever newline
set nojoinspaces "Squash multiple spaces when joining lines
set lazyredraw "Dont bother updating screen during macro playback etc
set virtualedit=block               " allow cursor to move where there is no text in visual block mode
set noea "Dont equalsize windows after closing one window
set scrolloff=3
if has('termguicolors')
  set termguicolors
endif
set clipboard=unnamed

if has('mac')
  "set highlight+=N:DiffText " make current line number stand out a little
  set highlight+=c:LineNr
  set guifont=Sauce\ Code\ Powerline\ Light:h18
elseif has('win32') || has('win64')
  au GuiEnter * set visualbell t_vb= "No bells or flickering on error
  au GUIEnter * simalt ~x "Start maximized
  set guifont=Powerline_Consolas:h11
  let g:NERDTreeCopyCmd= 'cp -r' "To be able to copy with NerdTree on Win
endif
