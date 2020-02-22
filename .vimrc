" Plugins - ###################################################################
call plug#begin()

" UI Stuff / Themes
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'vim-airline/vim-airline'        " status bar
Plug 'vim-airline/vim-airline-themes' " status theme
Plug 'dracula/vim', { 'as': 'dracula' }

" Editor - Suff
Plug 'jiangmiao/auto-pairs' " auto bracket
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fzf finder
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'                                          "NerdTree
Plug 'Chiel92/vim-autoformat'
Plug 'yggdroot/indentline'
" Programmind Sutff
Plug 'sheerun/vim-polyglot'                     " a collection of language packs for Vim.
Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }  " javascript completion (need to install node before this)
Plug 'w0rp/ale'                                 " lint chekcer
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
call plug#end()
" Plugins -  END ##############################################################

" Config - START ##############################################################
" Programming Config:
syntax on

" Basic Vim Config:
set t_Co=256
set background=dark
set hidden
set number
set relativenumber
set mouse=a
set shiftwidth=4
set tabstop=4
set noswapfile
set hls
set hlsearch
set ignorecase
set wildmenu
set wildmode=longest:full,full
set cursorline 
set cursorcolumn

" Editor Config
" "to toggle on and of, can type >  IndentLinesToggle
let g:indentLine_char_list = [ '┊','┆','|', '¦' ]

" Theme Config:
colorscheme gruvbox

" Status Bar Config:
set laststatus=2

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

let g:airline_theme='gruvbox'
let g:colorscheme_switcher_define_mappings = 1 " change colorscheme with F8 and SHIFT-F8
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols.linenr = " " "font https://github.com/vim-airline/vim-airline/issues/1397
let g:airline_symbols.whitespace = " "
let g:airline#extensions#tabline#formatter = 'unique_tail'

set wildignore+=*.pyc,__pycache__,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let NERDTreeRespectWildIgnore=1 " Nerdtree config for wildignore
" Config - END ################################################################

" Key Binginds ################################################################
nnoremap <leader><TAB> :NERDTreeToggle<cr> "NerdTree
nnoremap <C-p> :Files<CR> " Open file search
nnoremap <Leader>b :Buffers<CR> 
nnoremap <Leader>h :History<CR>
noremap <F3> :Autoformat<CR> " Auto Format
noremap <C-e> :Buffers<CR> "Open Buffers
" Key Binginds - END ##########################################################
