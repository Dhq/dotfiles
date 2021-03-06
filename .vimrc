silent! call plug#begin()
" Colorschemes
Plug 'cocopon/iceberg.vim'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'rakr/vim-one'
"General
Plug 'jiangmiao/auto-pairs' "Add closing quote, bracket etc
"Plug 'scrooloose/syntastic' "Lintin
"Plug 'junegunn/vim-emoji'
Plug 'blueyed/vim-diminactive' "Dim inactive windows
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary' "Comment and uncoment code
Plug 'kshenoy/vim-signature' "Display marks on the side
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'rking/ag.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'wincent/loupe' "Better in-file searching
Plug 'christoomey/vim-system-copy'
Plug 'sheerun/vim-polyglot' "Bunch of lang syntaxes
Plug 'ervandew/supertab'
"HTML/CSS
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'gregsexton/MatchTag' "Matches current html tag
Plug 'alvan/vim-closetag'
"JS
Plug 'othree/yajs.vim', { 'for': 'javascript' } "Js syntax
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
"Git
Plug 'airblade/vim-gitgutter'
"Other
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
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

nmap <Up> <Plug>GitGutterPrevHunk
nmap <Down> <Plug>GitGutterNextHunk
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>
nnoremap <CR> :noh<CR><CR>
let g:user_emmet_leader_key='<C-Z>'
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
nnoremap <c-s> :w<CR>
inoremap <c-s> <c-o>:w<cr>
vnoremap <c-s> <Esc>:w<CR>

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
nmap <F12> :call ToggleColorscheme()<CR>

"--- Fugitive bindings ---
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

let g:ag_working_path_mode="r"
set wildignore+=*/node_modules/*,*/.DS_Store,*/bin/*,*/obj/*,*/bower_components/*
set wildignore+=*.bmp,*.jpg,*.gif,*.jpeg,*.png,*.dll,*.exe,*.ico
let g:ctrlp_cmd='CtrlP :pwd'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn|bower_components|node_modules)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links'
      \ }
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:used_javascript_libs = 'jQuery,angular,react'
" Trigger configuration. Do not use <tab> if you use YouCompleteMe
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore bower_components'
let NERDTreeShowHidden=1
let g:jsx_ext_required = 0

colorscheme iceberg
syntax enable " Enable syntax processing
filetype plugin on
runtime macros/matchit.vim " % work for xml/html tags as well

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

"Airline
set laststatus=2 " vim-airline always show
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='one'

"Gvim settings
set lines=10000 columns=10000 "Start gvim maximized
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

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

" --- Functions
function! ToggleColorscheme()
  if (g:colors_name == "base16-ocean")
    colors tomorrow-night
  elseif (g:colors_name == "tomorrow-night")
    colors one
  elseif (g:colors_name == "one")
    colors iceberg
  else
    colors base16-ocean
  endif
endfunction

" Cycle through relativenumber + number, number (only), and no numbering.
function! CycleNumbers() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

au BufReadPost *.view set syntax=html
