call plug#begin('~/.config/nvim/plugged')

" Experience plugins
Plug 'airblade/vim-gitgutter'
Plug 'ctjhoa/spacevim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'hecal3/vim-leader-guide'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'mbbill/undotree'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

" Language plugins
Plug 'mitsuse/autocomplete-swift'
Plug 'zchee/deoplete-docker'
Plug 'zchee/deoplete-go'
Plug 'zchee/deoplete-jedi'
Plug 'carlitux/deoplete-ternjs'
Plug 'mhartington/deoplete-typescript'
Plug 'ekalinin/Dockerfile.vim'
Plug 'google/vim-coverage'
Plug 'fatih/vim-go'
Plug 'moll/vim-node'
Plug 'hashivim/vim-terraform'
Plug 'saltstack/salt-vim'
Plug 'keith/swift.vim'
Plug 'leafgarland/typescript-vim'

" deps
Plug 'google/vim-maktaba'
Plug 'google/vim-glaive'

" xcode stuff
Plug 'gfontenot/vim-xcode'

" Colorschemes
Plug 'KeitaNakamura/neodark.vim'

call plug#end()

" colorscheme
colorscheme neodark

" Syntax highlighting, obv
syntax enable
set expandtab
set shiftwidth=2
set tabstop=2

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

" swift
autocmd BufNewFile,BufRead *.swift set filetype=swift

" terraform
let g:terraform_fmt_on_save = 1
let g:terraform_align = 1

" go
let g:go_fmt_command = "goimports"

" ag shortcut
nmap <C-a> :Ag<CR>

" Jenkinsfile
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy
