call plug#begin('~/.config/nvim/plugins')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'rust-lang/rust.vim'
Plug 'phpactor/phpactor', {'for': 'php', 'branch': 'master', 'do': 'composer install --no-dev -o'}

Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'

call plug#end()

" Keybindings
map <A-space> :NERDTreeToggle<CR>
inoremap <silent><expr> <c-space> coc#refresh()

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

set number relativenumber
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set autoindent
set smartindent
set copyindent
set clipboard+=unnamedplus
set autoread

" Pugin config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \ 'coc-clangd',
  \ 'coc-godot',
  \ 'coc-rls',
  \ 'coc-tabnine',
  \ 'coc-vetur',
  \ 'coc-css',
  \ 'coc-fish',
  \ ]

let g:lightline = {
  \ 'colorscheme': 'nord',
  \ }

let g:NERDTreeIgnore = ['^node_modules$']
let g:rustfmt_autosave = 1

autocmd BufWritePre * :%s/\s\+$//e
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
autocmd FocusGained * silen! checktime

colorscheme nord
set termguicolors
