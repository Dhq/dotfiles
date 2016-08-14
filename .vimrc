silent! call plug#begin()
"General
Plug 'flazz/vim-colorschemes' 
Plug 'nathanaelkane/vim-indent-guides' "highlight callback hells
Plug 'jiangmiao/auto-pairs' "Add closing quote, bracket etc
Plug 'scrooloose/syntastic' "Lintin
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
Plug 'terryma/vim-multiple-cursors' 
"Plug 'Valloric/YouCompleteMe' 
Plug 'vim-scripts/BufOnly.vim' "Close all but current buffer
"HTML/CSS
Plug 'mattn/emmet-vim' "Emmet
Plug 'Rykka/colorv.vim'
Plug 'othree/html5.vim'
Plug 'ap/vim-css-color' "Color preview in css
Plug 'tpope/vim-ragtag' "Faster creating of tags
Plug 'gregsexton/MatchTag' "Matches current html tag
Plug 'groenewege/vim-less' 
"JS
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim', { 'for': 'javascript' } "Js syntax
Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
"Git
Plug 'airblade/vim-gitgutter' 
Plug 'tpope/vim-fugitive' 
"Other 
Plug 'plasticboy/vim-markdown'
"Plug 'OrangeT/vim-csharp' 
call plug#end()


map <Space> <leader>
nmap <leader>p :CtrlP<CR>
nmap <leader>b :CtrlPBuffer<CR>
map <leader>n :NERDTreeToggle<CR>
" Find file in NT
map <leader>j :NERDTreeFind<CR>
nmap <S-Enter> O<Esc>
""Indent whole file, move back to cursor pos
nmap <F1> gg=G'' 
nmap <F2> :BufOnly<CR>
"" Remove surrounding tag
nmap <F3> citvatp
nmap <F4> :so $MYVIMRC<CR>
nmap <F5> :set wrap linebreak nolist<CR>
nmap <F11> <Plug>GitGutterPrevHunk
nmap <F12> <Plug>GitGutterNextHunk
nnoremap <CR> :noh<CR><CR>
nnoremap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>
nnoremap <C-q> :bdelete<CR>
let g:user_emmet_leader_key='<C-x>'

"Fugitive key bindings
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
"let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:ag_working_path_mode="r"
set wildignore+=*/node_modules/*,*/.DS_Store,*/bin/*,*/obj/*
set wildignore+=*.bmp,*.jpg,*.gif,*.jpeg,*.png,*.dll,*.exe,*.ico
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:indent_guides_start_level = 2
let g:used_javascript_libs = 'jQuery,angular,react'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
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
set number " Line numbers
set vb t_vb= " No beeping or flickering on error
set nobackup "no backup files
set noswapfile
set encoding=utf-8   
set diffopt+=vertical
"let g:syntastic_javascript_checkers = ['eslint']

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
