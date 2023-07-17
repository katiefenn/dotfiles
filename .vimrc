" VUNDLE
" ======
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sainnhe/everforest'
"Bundle 'myusuf3/numbers.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
call vundle#end()            " required
filetype plugin indent on    " required


" Colorscheme
" ===========
if has('termguicolors')
  set termguicolors
endif
set background=dark
let g:everforest_background = 'hard'
let g:everforest_better_performance = 1
colorscheme everforest
let g:airline_theme = 'everforest'
syntax on


" NERDTree
" ========
" autocmd VimEnter * NERDTree | wincmd p
let NERDTreeMapOpenInTab='<ENTER>'

" Airline
" =======
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


" Editor settings
" ===============
:set list!
:set listchars=tab:\|\ ,eol:↲,extends:›,precedes:‹,nbsp:·,trail:·
:set tabstop=2
:set shiftwidth=2
:set shortmess=a


" Undo settings
" =============
:set hidden
:set undofile
:set undodir=$HOME/.vim/undo
:set undolevels=1000
:set undoreload=10000


" Mouse support
" =============
:set mouse=a


" Keyboard mappings
" =================
:nnoremap <C-b> :bp<CR>
:nnoremap <C-n> :bn<CR>
:xnoremap p pgvy


" Font
" ====
:set guifont=Inconsolata\ for\ Powerline:h21

" Folding
" =======
:setlocal foldmethod=syntax
:set foldlevelstart=99

" Line numbers
" ============
:set number

" Swapfiles
" =========
:set directory=$HOME/.vim/swapfiles//
