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
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

" Language plugins
Plug 'carlitux/deoplete-ternjs'
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go'
Plug 'leafgarland/typescript-vim'
Plug 'mhartington/deoplete-typescript'
Plug 'moll/vim-node'
Plug 'zchee/deoplete-docker'
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'google/vim-coverage'

" deps
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'

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
nmap <C-t> :FZF<CR>

" deoplete
let g:deoplete#enable_at_startup = 1

" vimshell
nmap <leader>s <plug>(vimshell_split_create)

" disable pymode folding
let g:pymode_folding = 0
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
