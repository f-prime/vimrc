set hlsearch
" set nuset tabstop=2 
set nu
set ruler
set softtabstop=0 
set expandtab 
set shiftwidth=2 
set smarttab 
set re=2
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
" set foldmethod=manualautocmd FileType python setlocal shiftwidth=4 softtabstop=4 smarttab expandtab foldmethod=manual
nnoremap <C-a> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-m> :NERDTreeClose<CR>
nnoremap <C-s> :set spell spelllang=en_us<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-u> :tabclose<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-j> :tabmove -1<CR>
nnoremap <C-k> :tabmove +1<CR>
nnoremap <C-e> :m .-2<CR>
nnoremap <C-d> :m .+1<CR>
nnoremap <C-f> :CtrlP<CR>
nnoremap <C-i> :foldclose<CR>
nnoremap <C-o> :foldopen<CR>

nnoremap <C-y> :CocDisable<CR>
nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'tabe')<CR>
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#next(1) : "\<Tab>"
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<cr>"

autocmd BufNewFile,BufRead *.jpp set syntax=python
" autocmd BufNewFile,BufRead *.hx set syntax=cs

call plug#begin('~/.vim/plugged')
set wrap!" Plug 'Shougo/deoplete.nvim'

let g:coc_global_extensions = ['coc-jedi', 'coc-rls', 'coc-tsserver', 'coc-rust-analyzer', 'coc-clangd']
let NerdTreeChDirMode=2

" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'ocaml/vim-ocaml'
Plug 'Tetralux/odin.vim'
Plug 'iamcco/coc-angular'
Plug 'evanleck/vim-svelte'
Plug 'zah/nim.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'makerj/vim-pdf'
Plug 'Quramy/tsuquyomi'
Plug 'ziglang/zig.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lark-parser/vim-lark-syntax'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'scrooloose/nerdtree'
Plug 'jdonaldson/vaxe'
Plug 'calviken/vim-gdscript3'
Plug 'fsharp/vim-fsharp', {
      \ 'for': 'fsharp',
      \ 'do':  'make fsautocomplete',
      \}
"Plug 'vim-syntastic/syntastic' 
"Plug 'python-mode/python-mode'
Plug 'liuchengxu/space-vim-theme'
Plug 'morhetz/gruvbox'
" Plug 'tmhedberg/matchit'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
Plug 'FrenzyExists/aquarium-vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

colorscheme space_vim_theme 
set background=dark
hi CocSearch ctermfg=lightblue
