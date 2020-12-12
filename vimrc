set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin),
"Plugin 'file:///home/jjeaby/Dev/tools/vim-plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/syntastic'
"Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'nanotech/jellybeans.vim'

" for rust
Plugin 'rust-lang/rust.vim'
Plugin 'dense-analysis/ale'
Plugin 'cespare/vim-toml'

" for fzf to search files
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" for auto bracket
Plugin 'jiangmiao/auto-pairs'

" This plugin is used for displaying thin vertical lines at each indentation level for code indented with spaces.
Plugin 'Yggdroot/indentLine'

call vundle#end()            " required


" for fzf to search files
set rtp+=~/.fzf
nnoremap <C-p> :Files<Cr>

"filetype plugin indent on    " required
"NERDTree ON 단축키를 "\nt"로 설정
map <Leader>nt <ESC>:NERDTree<CR>
let NERDTreeShowHidden=1
" let NERDTreeQuitOnOpen=1

"let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\.git$\|vendor$',
"    \ 'file': '\v\.(exe|so|dll)$'
"\ }

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar

color jellybeans

" Tag List 환경설정
filetype on                                 "vim filetype on
" 세부 정보 출력
set nu
set title
set showmatch
set ruler
" 구문 강조 사용
if has("syntax")
 syntax on
endif
" 색깔 설정
set t_Co=256
" 들여쓰기 설정
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
" 한글 입력 설정
set encoding=utf-8
set termencoding=utf-8
" 커서가 있는 줄을 강조함
set cursorline
set cursorcolumn
" 상태바 표시를 항상한다
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 검색 설정
set ignorecase
set hlsearch        " Highlight search by default.
set incsearch       " search pattern when still typing
set nowrapscan

" system clipboard 사용 (https://hyoje420.tistory.com/49)
set clipboard=unnamedplus

set noswapfile


" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" Markdown 문법 설정 (Git 에서 사용)
augroup markdown
    " remove previous autocmds
    autocmd!
    " set every new or read *.md buffer to use the markdown filetype
    autocmd BufRead,BufNew *.md setf markdown
augroup END

" for rusty tags
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!

let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

let g:rustfmt_autosave = 1
