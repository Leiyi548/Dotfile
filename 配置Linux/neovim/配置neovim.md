# 配置 neovim

## 安装 vim-plug

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## 我的一份简单配置

```viml
set nu
set rnu
syntax on
set showmatch
set cc=80
set cursorline
set scrolloff=5
set hlsearch
" 括号匹配
set showmatch
" 鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
set clipboard="unnameplus"
let mapleader=" "
set timeoutlen=500

nnoremap <leader>sc :nohl<cr>
nnoremap <leader>e :NERDTreeToggle<cr>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap sc <C-W>c
nnoremap sv :vsplit<cr>
nnoremap sg :split<cr>
nnoremap Q :qa!<cr>


nnoremap H ^
nnoremap L $
vnoremap H ^
vnoremap L $

nnoremap <leader>sc :nohl<cr>
nnoremap <leader>pi :PlugInstall<cr>

call plug#begin('~/.config/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' "airline 的主题
Plug 'tpope/vim-surround'
Plug 'dracula/vim'
call plug#end()

set termguicolors
set background=dark
" colorscheme gruvbox
colorscheme dracula

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='kolor'
```
