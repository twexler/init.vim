call plug#begin('~/.config/nvim/plugged')

" Experience plugins
Plug 'airblade/vim-gitgutter'
Plug 'ctjhoa/spacevim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'hecal3/vim-leader-guide'
Plug 'python-mode/python-mode'
Plug 'mbbill/undotree'
Plug 'Raimondi/delimitMate'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

" Language plugins
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'moll/vim-node'
Plug 'zchee/deoplete-docker'
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-jedi'

" Colorschemes
Plug 'KeitaNakamura/neodark.vim'

call plug#end()

" colorscheme
colorscheme neodark

" Syntax highlighting, obv
syntax enable
set expandtab

" Leader config
let mapleader = ' '

" Airline config
let g:airline_powerline_fonts = 1
set background=dark
let g:airline_theme="bubblegum"

" FZF config
" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)
nmap <c-t> <plug>(fzf-complete-file)

" deoplete
let g:deoplete#enable_at_startup = 1
