" My Vimrc config 

" Ingnore case, can be overruled by using "/c" or "/C" 
set ignorecase 

" Display current cusor postition 
set ruler 

" Display matches for a search while you type 
set incsearch

" Syntax highlighting & indent 
syntax on 
set hlsearch 
filetype plugin indent on 

" Line numbers
set number

" Plugin Stuff using vim-plug 
" Directory for the plugins
call plug#begin('/home/dalton/.config/nvim/plugged')

" Use the Plug command call the wanted modules including valid git URLs and
" options using { 'option': 'option'} 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Closing line 
call plug#end()

" Commands
let g:airline_powerline_fonts = 1
let g:airline_theme='minimalist'

" Shortcuts
map <C-n> :NERDTreeToggle<CR>
