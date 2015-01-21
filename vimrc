" SET the ENCODINGS"
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1 
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

" KEY MAP" 
inoremap ( ()<LEFT>
inoremap () ()
inoremap [ []<LEFT>
inoremap [] []
inoremap { {}<LEFT>
inoremap {} {}
inoremap {<CR> {<CR><CR>}<LEFT><UP><TAB>
inoremap " ""<LEFT>
inoremap "" ""
inoremap ' ''<LEFT>
inoremap '' ''


set nocompatible
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set nocp
filetype plugin on
set history=0
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set nobackup
set shiftwidth=4
set cinoptions=(0,:0
set tabstop=4
"set expandtab
set uc=0        "do not use swap file when editing
set nu

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

if has("autocmd")
  filetype plugin indent on
  autocmd FileType text setlocal tabstop=4
  autocmd FileType text setlocal textwidth=78
  autocmd FileType html setlocal shiftwidth=2
  autocmd FileType xml setlocal shiftwidth=2
else
  set autoindent		" always set autoindenting on
endif

if has("gui_running")
    set guifont=Monaco\ 9
    colorscheme railscasts
else
    "colorscheme 256-jungle
endif

"settings for taglist
nnoremap <silent> <F5> :TlistToggle<CR>
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window=1

"settings for minibuffer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

"winmanager
map<c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr> 

nnoremap <silent> <F2> :WMToggle<CR>

"settings for cscope
if has("cscope")
    set cst
endif


""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
map mr :Mark 
nmap mk <Plug>MarkSet
vmap mk <Plug>MarkSet
nmap mm <Plug>MarkClear
vmap mm <Plug>MarkClear
nmap me <Plug>MarkRegex
vmap me <Plug>MarkRegex 
""""""""""""""""""""""""""""""
" mark setting
""""""""""""""""""""""""""""""
map s :split 
map vs :vsplit 
