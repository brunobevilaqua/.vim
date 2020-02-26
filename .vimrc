syntax on 
filetype off

" Plugins - ###################################################################
call plug#begin('~/.vim/plugged')

" ================  UI Stuff / Themes ==============
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'vim-airline/vim-airline'        " status bar
Plug 'vim-airline/vim-airline-themes' " status theme
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme' "this theme has light and dark background
Plug 'jnurmine/Zenburn' "to load => :colors zenburn
"Options for solarized theme are:
"set background=dark and colorscheme solarized
" or
" set background=light and colorscheme solarized
Plug 'altercation/vim-colors-solarized'
Plug 'sonph/onehalf', {'rtp': 'vim/'} "config example below:
  " syntax on
  "set t_Co=256
  "set cursorline
  "colorscheme onehalflight
  "let g:airline_theme='onehalfdark'
  " lightline
  " let g:lightline.colorscheme='onehalfdark'

" ================ Rendering White Spaces ==========
" This plugin causes trailing whitespace to be highlighted in red.
"To fix the whitespace errors, call :FixWhitespace.  By default it
"operates on the entire file.  Pass a range (or use V to select some lines)
"to restrict the portion of the file that gets fixed.
Plug 'bronson/vim-trailing-whitespace'

" There are linewise mappings. [<Space> and ]<Space> add newlines before and after the cursor line. 
" [e and ]e exchange the current line with the one above or below it.
Plug 'tpope/vim-unimpaired'

" ================ add pairs of anything ===========
Plug 'jiangmiao/auto-pairs' " auto bracket

" ================ search ==========================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fzf finder
Plug 'junegunn/fzf.vim'

" ================ Nerd Tree =======================
Plug 'scrooloose/nerdtree'

" ================ show identation line ============
Plug 'yggdroot/indentline' 

" ================ Multiple cursors by pressing Ctrl n 
Plug 'terryma/vim-multiple-cursors' "with this can select a word and press Ctrl N to select and C to edit multiple.

" ================ Auto resize Split Windows when selected
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

" ================ Auto complete based on files ====
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

" ================ Programmind Sutff ===============
Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim', {'for': 'javascript'}
Plug 'othree/es.next.syntax.vim', {'for': 'javascript'}
Plug 'pearofducks/ansible-vim'
Plug 'HerringtonDarkholme/yats.vim'             "typescript syntax 
Plug 'ncm2/ncm2-tern', { 'do': 'npm install' }  " javascript completion (need to install node before this)
Plug 'w0rp/ale'                                 " lint chekcer
Plug 'moll/vim-node'                            "Node js Pluggin
Plug 'isRuslan/vim-es6' "Es6 Plugging

" ================ CocVim Sutff ===============
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-git', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-html', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-calc', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-spell-checker', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-actions', {'do': 'yarn install --frozen-lockfile'} "Only supports neovim

" ================ Formatting comments =============
Plug 'scrooloose/nerdcommenter'

" ================ git plugins =====================
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter' "this pluggin shows a + in the lines that werer changed

" =============== Ctags Bar ========================
Plug 'majutsushi/tagbar' " need to have ctgas installed: brew install ctags

" =============== Dim buffer windows ===============
Plug 'blueyed/vim-diminactive'

" =============== Autohighligh word under cursor ===
Plug 'RRethy/vim-illuminate'

call plug#end()
" Plugins -  END ##############################################################

" Config - START ##############################################################
" ================ Basic Vim Config ================
set clipboard^=unnamed,unnamedplus
set rulerformat=%30(%=\:b%n%y%m%r%w\ dd,%c%V\ %P%)
set number                      " Show line numbers
set relativenumber
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
set hidden
set mouse=a
set nocursorline 
"set cursorcolumn "show column line

" ================ Completion ======================
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.pyc,__pycache__,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

" ================= NERDTree config ================
let NERDTreeRespectWildIgnore=1 " Nerdtree config for wildignore
let NERDTreeShowHidden=1 " NerdTree show hidden files

" ================ Scrolling ========================
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" ================ Editor Config ===================
" "to toggle on and of, can type >  IndentLinesToggle

" ================= javascript sintax configuration:
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END

"================= Search ==========================
set incsearch                   " Incremental search
set hlsearch                    " Highlight matches
set ignorecase                  " Case-insensitive search...
set smartcase                   " ...unless search contains uppercase letter

" ================= Spell checking =================
"set spelllang=en_us             " English as default language
"set spell                       " Enable by default

" ================= Splits =========================
set splitbelow                  " Horizontal split below
set splitright                  " Vertical split right

" ================= scroll =========================
set sidescrolloff=3             " Keep at least 3 lines left/right
set scrolloff=3                 " Keep at least 3 lines above/below

" ================= identation =====================
set smarttab                    " Better tabs
set smartindent                 " Insert new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=2                   " Columns a tab counts for
set softtabstop=2               " Columns a tab inserts in insert mode
set shiftwidth=2                " Columns inserted with the reindent operations
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs

" ================= Wrapping =======================
set nowrap                      " Don't wrap long lines
set textwidth=0                 " Turn off physical line wrapping
set wrapmargin=0                " Turn off physical line wrapping

" ================= Make completion menu behave like an IDE
set completeopt=longest,menuone,preview

" ================= Theme ==========================
colorscheme gruvbox
set background=dark

" ================= Status Bar =====================
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

let g:airline_theme='atomic'
let g:colorscheme_switcher_define_mappings = 1 " change colorscheme with F8 and SHIFT-F8
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_symbols.linenr = " " "font https://github.com/vim-airline/vim-airline/issues/1397
let g:airline_symbols.whitespace = " "
let g:airline#extensions#tabline#formatter = 'unique_tail'


" ================= Lint ===========================
let g:ale_sign_error = '💀'
let g:ale_sign_warning = '⚠️'

" ================ Auto resize Split Windows when selected
let g:fzf_layout = {
 \ 'window': 'new | wincmd J | resize 1 | call animate#window_percent_height(0.5)'
\ } 

" Config - END ################################################################

" Key Binginds ################################################################
" Changing Leader key to ,
let mapleader = ","

nnoremap <leader><TAB> :NERDTreeToggle<cr> "NerdTree
map <C-f> :NERDTreeFind<CR>         " Open NERDTree and focus on current file

map <leader>v :vertical :new<CR>   " open new vertical window
map <leader>h :new<CR>             " open a new horizontal window
map <leader>q :q<CR>               " it quit current vim buffer

map <leader>n :tabnew<CR>          " create a new tab
map <leader>z :tabprevious<CR>     " move to previous tab
map <leader>x :tabnext<CR>         " move to next tab

nmap <silent><leader>k :call CocAction('doHover')<CR>

"autocmd CursorHold * silent call CocActionAsync('doHover')
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <F6> <Plug>(ale_fix)
noremap <C-e> :Buffers<CR> 
nnoremap <leader><space> :noh<CR>  " Clear search highlight
nnoremap <leader>bb :bnext<CR> " Move between open buffers
"nnoremap <C-]> :bprev<CR> " disabling this as its causinga weird behavior... need to check later the reason
nnoremap <leader>p :Files<CR>
nnoremap <leader>bd :bdelete<CR> " Close Current Buffer
nnoremap <leader><space> :noh<CR> " Clear search highlight
nmap <F8> :TagbarToggle<CR> " Show tags bar 

" ================ Auto resize Split Windows when selected
nnoremap <silent> <Up>    :call animate#window_delta_height(10)<CR>
nnoremap <silent> <Down>  :call animate#window_delta_height(-10)<CR>
nnoremap <silent> <Left>  :call animate#window_delta_width(10)<CR>
nnoremap <silent> <Right> :call animate#window_delta_width(-10)<CR>

" =============== Toggle Identation ================
nnoremap <F9> :IndentLinesToggle<CR>
" Key Binginds - END ##########################################################
