set nocompatible
call plug#begin('~/.vim/plugged')
"highlight de sintaxe"
Plug 'sheerun/vim-polyglot'
"arvore de busca"
Plug 'preservim/nerdtree'
"emmet (auto-complete pra html)"
Plug 'mattn/emmet-vim'
call plug#end()

"Emmet remap"
let g:user_emmet_leader_key = ","
