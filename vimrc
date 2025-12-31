set hlsearch
" set nuset tabstop=2 
set nu
set ruler
set expandtab 
set tabstop=2
set softtabstop=0 
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
autocmd BufNewFile,BufRead *.heex set syntax=html
autocmd VimEnter * Copilot disable
" autocmd BufNewFile,BufRead *.hx set syntax=cs

" treat .jinja files as .html files
autocmd BufNewFile,BufRead *.jinja set filetype=html

call plug#begin('~/.config/nvim/plugged')
set wrap!" Plug 'Shougo/deoplete.nvim'

let g:coc_global_extensions = ['coc-rust-analyzer', 'coc-clangd', 'coc-html', 'coc-pyright', 'coc-tsserver']
"'@yaegassy/coc-ty']
let NerdTreeChDirMode=2
let g:rainbow_active=1

" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
Plug 'zah/nim.vim'
Plug 'iamcco/coc-angular'
Plug 'folke/tokyonight.nvim'
Plug 'vim-crystal/vim-crystal'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'hylang/vim-hy'
Plug 'makerj/vim-pdf'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lark-parser/vim-lark-syntax'
Plug 'scrooloose/nerdtree'
Plug 'jdonaldson/vaxe'
Plug 'gleam-lang/gleam.vim'
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
Plug 'elixir-editors/vim-elixir'
Plug 'dart-lang/dart-vim-plugin'


call plug#end()

" colorscheme space_vim_theme 
colorscheme tokyonight
set background=dark
hi CocSearch ctermfg=lightblue

lua << EOF
EOF
