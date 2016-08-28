silent! call plug#begin()
"General
Plug 'flazz/vim-colorschemes' 
Plug 'chriskempson/base16-vim' 
Plug 'nathanaelkane/vim-indent-guides' "highlight callback hells
Plug 'jiangmiao/auto-pairs' "Add closing quote, bracket etc
Plug 'scrooloose/syntastic' "Lintin
Plug 'blueyed/vim-diminactive' "Dim inactive windows
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter' "Comment and uncoment code 
Plug 'kshenoy/vim-signature' "Display marks on the side
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' 
Plug 'dkprice/vim-easygrep'
Plug 'tpope/vim-surround' 
Plug 'rking/ag.vim' 
Plug 'AndrewRadev/splitjoin.vim' 
Plug 'editorconfig/editorconfig-vim' "Matches current html tag
Plug 'duggiefresh/vim-easydir' "Creates folder if not exists, new file
Plug 'honza/vim-snippets' "Snippet lib
Plug 'mbbill/undotree' 
"Plug 'Valloric/YouCompleteMe' 
Plug 'vim-scripts/BufOnly.vim' "Close all but current buffer
Plug 'tpope/vim-dispatch' "Dispatch commands from within vim
"HTML/CSS
Plug 'mattn/emmet-vim' "Emmet
Plug 'Rykka/colorv.vim'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color' "Color preview in css
Plug 'tpope/vim-ragtag' "Faster creating of tags
Plug 'gregsexton/MatchTag' "Matches current html tag
Plug 'groenewege/vim-less' 
Plug 'alvan/vim-closetag' 
"JS
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim', { 'for': 'javascript' } "Js syntax
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
"Elm
Plug 'lambdatoast/elm.vim'
"Git
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive' 
"Other 
Plug 'plasticboy/vim-markdown'
Plug 'OrangeT/vim-csharp' 
call plug#end()

"--- Standard mappings 
map <Space> <leader>
nmap Q q
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

" --- Leader mappings ---
nmap <leader><leader> <C-^>
map <leader>a :Ag 
map <leader>f :NERDTreeFind<CR>
nmap <leader>p :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>ow :only<CR>
map <leader> :w<CR>
map <leader>ob :BufOnly<CR>
map <leader>dg :diffget<CR>
map <leader>dp :diffput<CR>
nnoremap <leader>q :bdelete<CR>
noremap <leader><Left> :diffget //2<CR>
noremap <leader><Right> :diffget //3<CR>

"--- Function mappings ---
nmap <F1> gg=G'' 
nmap <F3> yitvatp
nmap <F4> :so $MYVIMRC<CR>
nmap <F5> :set wrap linebreak nolist<CR>
noremap <silent> <F11> :let @+=expand("%:p")<CR>
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

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 0
let g:ag_working_path_mode="r"
set wildignore+=*/node_modules/*,*/.DS_Store,*/bin/*,*/obj/*
set wildignore+=*.bmp,*.jpg,*.gif,*.jpeg,*.png,*.dll,*.exe,*.ico
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links'
  \ }
let g:indent_guides_start_level = 2
let g:used_javascript_libs = 'jQuery,angular,react'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:ag_prg='ag -S --nocolor --nogroup --column --ignore node_modules --ignore bower_components'
let NERDTreeShowHidden=1
let g:gitgutter_sign_column_always=1 
syntax enable " Enable syntax processing
filetype plugin on
runtime macros/matchit.vim "Needed to get matchit to work on html tags?

set nocompatible
set hidden
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
set cursorline
set relativenumber

"Airline
set laststatus=2 " vim-airline always show
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"Gvim settings
set lines=10000 columns=10000 "Start gvim maximized
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar


if has('mac')
    colorscheme base16-ocean
    set highlight+=N:DiffText " make current line number stand out a little
    set highlight+=c:LineNr  
    set guifont=Sauce\ Code\ Powerline\ Light:h15 
elseif has('win32') || has('win64')
    colorscheme tomorrow-night
    au GUIEnter * simalt ~x "Start maximized
    set guifont=Consolas:h11
    let g:NERDTreeCopyCmd= 'cp -r' "To be able to copy with NerdTree on Win
endif

function! ToggleColorscheme()
    if (g:colors_name == "base16-ocean")
      colors tomorrow-night
    else
      colors base16-ocean
    endif
endfunction
