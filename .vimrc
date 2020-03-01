" Plugins - ###################################################################
call plug#begin('~/.vim/plugged')

" ================  UI Stuff / Themes ==============
" there is a gruvbox configuration in this file, so when deleting make sure to delete both places!
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'joshdick/onedark.vim'

Plug 'NLKNguyen/papercolor-theme'

"Monochrome themes:
Plug 'fxn/vim-monochrome'

Plug 'Lokaltog/vim-monotone'

" this them has also a configuration in this file, so when removing, make sure to delete both places!
Plug 'arzg/vim-colors-xcode'

" ================ add pairs of anything ===========
Plug 'jiangmiao/auto-pairs' " auto bracket

" ================ search ==========================
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }   " fzf finder
Plug 'junegunn/fzf.vim'

" ================ Nerd Tree =======================
Plug 'scrooloose/nerdtree'

" Filetype icons support (requires patched font) "install nerdfonts!!!
" Install thru homebrew as below, or run install.sh inside of ryanoasis/vim-devicons folder!
" brew tap homebrew/cask-fonts
" brew cask install font-hack-nerd-fon
Plug 'ryanoasis/vim-devicons'

" ================ show identation line ============
Plug 'yggdroot/indentline' 

" ================ Multiple cursors by pressing Ctrl n 
Plug 'terryma/vim-multiple-cursors' "with this can select a word and press Ctrl N to select and C to edit multiple.

" ================ Auto resize Split Windows when selected
Plug 'camspiers/animate.vim'
Plug 'camspiers/lens.vim'

" ================ Programming Sutff ===============
Plug 'sheerun/vim-polyglot'  "A collection of language packs for Vim.
Plug 'dense-analysis/ale'                       " lint chekcer
Plug 'moll/vim-node'                            "Node js Pluggin

" ================ CocVim Sutff ===============
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" Setting ctags file! 
set tags=tags;/

filetype off
set noswapfile

" faster scroll when syntax on
set lazyredraw
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
set hidden
set mouse=a
set nocursorline 
"set cursorcolumn "show column line

" ================ Completion ======================
" vim was very slow when showing for autocomplete options, so i found this on
" internet and seems to resolve the issue!
set foldmethod=manual
set wildmenu
set wildmode=longest:full,full
set wildignore+=*.pyc,__pycache__,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*

" ================= NERDTree config ================
let NERDTreeRespectWildIgnore=1 " Nerdtree config for wildignore
let NERDTreeShowHidden=1 " NerdTree show hidden files

" ================ Scrolling ========================
"set scrolloff=8         "Start scrolling when we're 8 lines away from margins
"set sidescrolloff=15
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
set incsearch

" ================= Spell checking =================
"set spelllang=en_us             " English as default language
"set spell                       " Enable by default

" ================= Splits =========================
set splitbelow                  " Horizontal split below
set splitright                  " Vertical split right

" ================= identation =====================
set smarttab                    " Better tabs
set smartindent                 " Insert new level of indentation
set autoindent                  " Copy indentation from previous line
set tabstop=2                   " Columns a tab counts for
set softtabstop=2               " Columns a tab inserts in insert mode
set shiftwidth=2                " Columns inserted with the reindent operations
set shiftround                  " Always indent by multiple of shiftwidth
set expandtab                   " Always use spaces instead of tabs

" below options are related to yggdroot/indentline  plugin
let g:indentLine_char = '┊'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" ================= Wrapping =======================
set nowrap                      " Don't wrap long lines
set textwidth=0                 " Turn off physical line wrapping
set wrapmargin=0                " Turn off physical line wrapping

" ================= Make completion menu behave like an IDE
set completeopt=longest,menuone,preview

" ================= Theme ==========================
  syntax on 
  set t_Co=256

  colorscheme xcodedark 
  set background=dark

  "settings for vim-monochrome
  let g:monochrome_italic_comments = 1

  " Settings for Gruvbox
    let g:gruvbox_italicize_strings=0                                                                                                                                                        
    let g:gruvbox_improved_strings=1 
    " contrast values: soft, medium, hard. default is medium.
    let g:gruvbox_contrast_dark='medium'
    let g:gruvbox_contrast_light='medium'

  "Setting for vim-colors-xcode
    let g:signify_sign_add    = '┃'
    let g:signify_sign_change = '┃'
    let g:signify_sign_delete = '•'
    let g:signify_sign_show_count = 0 " Don’t show the number of deleted lines.
    " Update Git signs every time the text is changed
    autocmd User SignifySetup
            \ execute 'autocmd! signify' |
            \ autocmd signify TextChanged,TextChangedI * call sy#start()
    let g:xcodedark_green_comments  = 0
    let g:xcodedark_emph_types =  0
    let g:xcodedark_emph_funcs = 1
    let g:xcodedark_emph_idents = 0
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
let g:airline#extensions#tabline#fnamemod = ':t'

" ================= Lint ===========================
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_set_highlights = 1
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

" ================ Auto resize Split Windows when selected
let g:fzf_layout = {
 \ 'window': 'new | wincmd J | resize 1 | call animate#window_percent_height(0.5)'
\ } 

" Config - END ################################################################

" Key Binginds ################################################################
" Changing Leader key to ,
let mapleader = "\<Space>"

map <leader><TAB> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFind<CR>         " Open NERDTree and focus on current file

map <leader>v :vs<CR>             " open new vertical window
map <leader>h :sp<CR>             " open a new horizontal window
map <leader>q :q<CR>              " it quit current vim buffer

map <leader>n :tabnew<CR>         " create a new tab
map <leader>z :tabprevious<CR>    " move to previous tab
map <leader>x :tabnext<CR>        " move to next tab

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

" =============== Swith Splits with Tab ============
map <tab> <c-w><c-w>

" =============== moll/vim-node ====================
" autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

" Key Binginds - END ########################################################## 
