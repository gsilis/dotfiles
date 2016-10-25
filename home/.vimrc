set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-endwise'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'whatyouhide/vim-gotham'

" Language support
Plugin 'pangloss/vim-javascript'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'https://github.com/slim-template/vim-slim'
Plugin 'https://github.com/Raimondi/delimitMate'
Plugin 'https://github.com/ervandew/supertab'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set clipboard=unnamed
set nu
set mouse=a
set wildignore+=*/tmp/*,*/dist/*,*/bower_components/*,*/node_modules/*,*.so,*.zip,*.swp,*~,._*
set sw=2 ts=2 sts=2
set expandtab
set laststatus=2
colorscheme one

" Disable Ex mode from Q
nnoremap Q <nop>

let mapleader='\'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme="light"
let g:mustache_abbreviations=2

syntax on
hi MatchParen cterm=bold ctermbg=red ctermfg=white

map <C-n> :NERDTreeToggle<CR>
map gn :bn!<cr>
map gp :bp!<cr>
map gd :bd<cr>
map <C-c> <leader>ci
map <C-b> :Gblame<cr>
inoremap {<CR> {<CR>}<C-o>O

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
