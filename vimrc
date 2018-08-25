"##### VIM-PLUG SETUP #####
call plug#begin('~/.vim/plugged')

Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue'] }

Plug 'w0rp/ale'
Plug 'https://github.com/posva/vim-vue.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'mattn/emmet-vim'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()

"##### VIM SETTINGS #####
syntax on

set laststatus=2
set noshowmode
set nu
set background=dark

colorscheme gruvbox 
let g:lightline = {'colorscheme': 'one'}

"##### PRETTIER SETTINGS #####
let g:prettier#autoformat = 0
autocmd BufWritePre *.vue,*.js,*.css,*.scss,*.less PrettierAsync

"##### ALE SETTINGS #####
let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fix_on_save = 1

