" =================================
" Vim Plug - Plugin Manager
" =================================

call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/syntastic'

Plug 'airblade/vim-gitgutter'

Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

Plug 'ctrlpvim/ctrlp.vim'

Plug 'mhinz/vim-startify'

" Add plugins to &runtimepath
call plug#end()

" =================================
" Colorscheme Configuration
" =================================

syntax enable " Enable syntax highlighting
set background=dark
colorscheme solarized

" =================================
" Airline Configuration
" =================================

let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'solarized'
let g:airline#extensions#syntastic#enabled = 1

" =================================
" Syntastic Configuration
" =================================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" =================================
" YouCompleteMe Configuration
" =================================

let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm-default.py'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
set completeopt-=preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_min_num_of_chars_for_completion = 1

" =================================
" Searching
" =================================

set hlsearch            " Highlight search results.
set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set incsearch           " Incremental search.

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" ================================
" Line number Configuration
" ================================

set number
if(&relativenumber == 1)
  set nornu
  set number
else
  set rnu
endif

" ================================
" Tabbing and Spacing
" ================================

set autoindent   " Always autoindent
set expandtab    " Use spaces instead of tabs
set shiftwidth=2 " Number of spaces for auto indenting
set smarttab     " Insert tabs according to shfitwidth
set tabstop=2    " Set tab width to 2
set scrolloff=6  " Start scrolling 6 lines up

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
endif
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" ================================
" Uncategorized
" ================================

set showmatch " Show matching brackets
