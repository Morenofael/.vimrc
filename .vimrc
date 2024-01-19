set nocompatible

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
"highlight de sintaxe"
Plug 'sheerun/vim-polyglot'
"arvore de busca"
Plug 'preservim/nerdtree'
"emmet (auto-complete pra html)"
Plug 'mattn/emmet-vim'
"auto-complete"
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rafi/awesome-vim-colorschemes'
Plug 'ap/vim-css-color'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-unimpaired'
call plug#end()

"Emmet remap"
let g:user_emmet_leader_key = ","

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
