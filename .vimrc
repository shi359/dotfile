" Install vim-plug
set nocompatible
filetype off
set rtp +=~/.vim/bundle/vundle
call vundle#rc()

" Plugin
Plugin 'dgryski/vim-godef'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/auto-pairs'
Plugin 'scrooloose/nerdtree'
" for golang
Plugin 'fatih/vim-go'
Plugin 'craigemery/vim-autotag'
Plugin 'majutsushi/tagbar'
Plugin 'mdempsky/gocode', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
call vundle#end()


filetype plugin indent on

" Setting
set t_Co=256
syntax on
set backspace=start,eol,indent
set cursorline
set encoding=utf-8
set number
set hlsearch
"set smartindent
set laststatus=2
set guifont=Inconsolata\ for\ Powerline\ 20
" auto open nerdtree
" au VimEnter * NERDTree
" close nerdtree when exit vim
" autocmd bufenter * if (winnr("$")==1 && exists("b:NERDTree")&&b:NERDTree.isTabTree()) | q | endif
" Cursor on file
autocmd VimEnter * wincmd p

" Plugin Setting
let g:SuperTabRetainCompletionType=2
let g:monokai_original = 1
let g:airline_theme='wombat'
let g:airline_powerline_fonts = 1 " Basic config for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_left_sep=' '
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0 ',
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 '
    \}
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions',
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype',
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n',
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent',
    \ }

let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"
let g:godef_split=0
" Colour
colorscheme monokai
" Tab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set ttimeoutlen=50

" HotKey
nnoremap <C-Left> :bf<CR>
nnoremap <C-Right> :bn<CR>
nnoremap <leader>q :bp<cr>:bd #<cr>
nmap <F4> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

