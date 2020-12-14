"All this customization from :
"->   https://vimawesome.com
"->   https://www.shortcutfoo.com/blog/top-50-vim-configuration-options/


syntax enable   "for Basic Highlights

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu      "line number
set smartcase
set noswapfile
set nobackup
set incsearch
set background=dark
colorscheme jellybeans

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set backspace=indent,eol,start "for backspace to work 
filetype plugin on


":source % (in .vimrc)then after closing open vim and type :PlugInstall
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'altercation/vim-colors-solarized'
call plug#end() 



"""""""""""     Customization       """"""""""""""""""""""""""'

let g:airline_theme='soda'
let g:gruvbox_italic=1
let g:gruvbox_italicize_comments=1
let  g:gruvbox_underline=1
let g:jellybeans_use_term_italics = 1

let g:jellybeans_overrides = {
\    'MatchParen': { 'guifg': 'ffffff', 'guibg': '556779' },
\}


"For nerd tree Configuration
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"Stick this in your vimrc to open NERDTree with Ctrl+n (you can set whatever key you want):
map <C-n> :NERDTreeToggle<CR>


"For nerd Commenter
" Create default mappings
let g:NERDCreateDefaultMappings = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'


"SyntasticChecker setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"solarized theme
"let g:solarized_termcolors=  256
"let g:solarized_termtrans =   0     
"let g:solarized_degrade   =   0       
"let g:solarized_bold      =   1       
"let g:solarized_underline =   1 
"let g:solarized_italic    =   1
"let g:solarized_contrast  = "high"
"let g:solarized_visibility=  "high"






"""""""""""""""""""" Vundle Configuration """""""""""""""""""""""''
" :PluginIstall    to install plugin
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin('~/.vim/plugged')
Plugin 'VundleVim/Vundle.vim'
Plugin 'valloric/youcompleteme'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

