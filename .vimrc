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
Plug 'terryma/vim-multiple-cursors' "with this can select a word and press Ctrl N to select and C to edit multiple.
" Auto completition based on files 
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" NOTE: you need to install completion sources to get completions. Check
" our wiki page for a list of sources: https://github.com/ncm2/ncm2/wiki
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

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
set clipboard^=unnamed,unnamedplus
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set number                      " Show line numbers
set pastetoggle=<F2>            " Toggle paste mode with F2
set ruler                       " Show ruler
set showcmd                     " Show current command
set showmatch                   " Show matching bracket/parenthesis/etc
set showmode                    " Show current mode
set tags=tags;                  " Find tags recursively
set title                       " Change terminal title
set ttyfast                     " Fast terminalo
set lazyredraw                  " Use lazy redrawing
set nofoldenable                " Disable folding
set encoding=utf-8
set backspace=indent,eol,start  " Delete over line breaks

set t_Co=256
set background=dark
set hidden
set relativenumber
set mouse=a
set wildmenu
set wildmode=longest:full,full
set cursorline 
"set cursorcolumn "show column line

" Editor Config
" "to toggle on and of, can type >  IndentLinesToggle
let g:indentLine_char_list = [ '┊','┆','|', '¦' ]


" Search
set incsearch                   " Incremental search
set hlsearch                    " Highlight matches
set ignorecase                  " Case-insensitive search...
set smartcase                   " ...unless search contains uppercase letter

" Spell checking
"set spelllang=en_us             " English as default language
"set spell                       " Enable by default

" Splits
set splitbelow                  " Horizontal split below
set splitright                  " Vertical split right

" Scroll
set sidescrolloff=3             " Keep at least 3 lines left/right
set scrolloff=3                 " Keep at least 3 lines above/below

" Indentation
set smarttab                    " Better tabs
set smartindent                 " Insert new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=2                   " Columns a tab counts for
set softtabstop=2               " Columns a tab inserts in insert mode
set shiftwidth=2                " Columns inserted with the reindent operations
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs

" Wrapping
set nowrap                      " Don't wrap long lines
set linebreak                   " When wrapping, only at certain characters
set textwidth=0                 " Turn off physical line wrapping
set wrapmargin=0                " Turn off physical line wrapping

" Make completion menu behave like an IDE
set completeopt=longest,menuone,preview

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
nnoremap <leader>p :Files<CR> " Open file search
nnoremap <Leader>h :History<CR>
noremap <F3> :Autoformat<CR> " Auto Format
noremap <C-e> :Buffers<CR> "Open Buffers
nnoremap <leader><space> :noh<CR>  " Clear search highlight
" Move between open buffers
nnoremap <C-n> :bnext<CR>
nnoremap <C-p> :bprev<CR>
"nnoremap <C-p> :bprev<CR> "commenting this out as im already using the same
" Close Current Buffer
nnoremap <leader>bd :bdelete<CR>
" Clear search highlight
nnoremap <leader><space> :noh<CR>
" Key Binginds - END ##########################################################
