" Configuraciones básicas
syntax on
set number        " Mostrar números de línea
set autoindent
set tabstop=4     " Tamaño de tabulación
set shiftwidth=4
set smarttab      " Tamaño de indentación
set encoding=utf-8
set softtabstop=4 " Tamaño de tabulación suave
set rtp +=~/.vim

filetype on
filetype plugin on
filetype indent on

set background=dark
hi clear
if exists('syntax_on')
  syntax reset
endif
let g:colors_name = 'test'
hi! link vimCommand ErrorMsg
hi vimOption cterm=reverse gui=reverse

" Importar plugins y configuraciones
  " Plugin Manager: Plug.vim
  call plug#begin('~/.config/nvim/plugged')

  " Ejemplo de plugins
  Plug 'sheerun/vim-polyglot'
  Plug 'pangloss/vim-javascript'
  Plug 'octol/vim-cpp-enhanced-highlight'
  Plug 'OmniSharp/omnisharp-vim'
  Plug 'szebniok/tree-sitter-wgsl'
  Plug 'HoNamDuong/hybrid.nvim'
  Plug 'tpope/vim-fugitive'           " Git integración
  "Plug 'tpope/vim-surround'           " Surrounding ysw
  Plug 'preservim/nerdtree'           " NerdTree
  Plug 'tpope/vim-commentary'         " For Commenting gcc & gc
  Plug 'vim-airline/vim-airline'      " Status bar
  Plug 'ap/vim-css-color'             " CSS Color Preview
  Plug 'rafi/awesome-vim-colorschemes'" Retro Scheme
  Plug 'ryanoasis/vim-devicons'       " Developer Icons
  Plug 'tc50cal/vim-terminal'         " Vim Terminal
  Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
  "Plug 'akinsho/nvim-bufferline.lua'  " Bufferline
  Plug 'ellisonleao/gruvbox.nvim'     " Gruvbox theme
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm ci' }
  Plug 'twolfson/sublime-files'
  Plug 'kien/ctrlp.vim'
  "Plug 'api/vim-buftabline'
  Plug 'rebelot/kanagawa.nvim'
  "Plug 'AlexvZyl/nordic.nvim'
  "Plug 'nvim-lua/plenary.nvim'
  "Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.6' }
  " or                                , { 'branch': '0.1.x' }  
  "Plug 'rust-lang/rust.vim'
  "Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'dense-analysis/ale'
  Plug 'nyoom-engineering/oxocarbon.nvim'
  Plug 'n1ghtmare/noirblaze-vim'

  call plug#end()
  
  " Configuración de tema
  " colorscheme kanagawa
  " colorscheme gruvbox
  " colorscheme nordic
  " colorscheme everforest
    " lucid, afterglow, twilight256, oxocarbon
    set background=dark
    colorscheme twilight256

" Mapeos de teclas
" Ejemplo de mapeo para abrir la barra de estado de Airline
nnoremap <leader>a :AirlineToggle<CR>

" Atajos útiles
nnoremap <C-l> :NERDTreeToggle<CR>
nnoremap <C-f> :CtrlP<CR>
nnoremap <C-t> :TerminalSplit bash<CR>
nnoremap <C-s> :w<CR>

" Usa Tab para expandir snippets y moverse a través de placeholders
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <silent><expr> <C-space> coc#refresh()

" Usa Tab y Shift-Tab para moverse a través de placeholders en snippets
let g:coc_snippet_next = '<Tab>'
let g:coc_snippet_prev = '<S-Tab>'

" Usa Ctrl-C para copiar al portapapeles del sistema en modo visual
vnoremap <C-c> "+y

" Usa Ctrl-V para pegar desde el portapapeles del sistema en modo normal
nnoremap <C-v> "+p

" Usa Ctrl-V para pegar desde el portapapeles del sistema en modo insertar
inoremap <C-v> <C-r><C-o>+

if exists("syntax_on")
    syntax reset
endif

au BufRead,BufNewFile *.js set filetype=javascript
au BufRead,BufNewFile *.cpp,*.h set filetype=cpp
au BufRead,BufNewFile *.cs set filetype=cs
au BufRead,BufNewFile *.rs set filetype=rust

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

let g:ale_c_cpp_checkers = ['clang']
let g:ale_linters_explicit = 1
let g:ale_linters = {
    \   'c': ['clang', "compile_commands"],
    \   'cpp': ["compile_commands"],
    \}
let g:ale_cpp_gcc_executable = 'g++'
let g:ale_cpp_clang_executable = 'clang++'
let g:ale_cpp_compile_commands = 1
let g:ale_verbose = 1
let g:ale_cpp_clang_options = '-I./include/ -I./lib/'
let g:ale_cpp_clang_options = '-p .clang_complete'


