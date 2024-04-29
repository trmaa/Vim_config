" init.vim

" Configuraciones básicas
set number        " Mostrar números de línea
set autoindent
set tabstop=4     " Tamaño de tabulación
set shiftwidth=4
set smarttab " Tamaño de indentación
set encoding=utf-8
set softtabstop
" set mouse=a

" Importar plugins y configuraciones
if has('nvim')
  " Plugin Manager: Plug.vim
  call plug#begin('~/.config/nvim/plugged')

  " Ejemplo de plugins
  Plug 'HoNamDuong/hybrid.nvim'
  Plug 'tpope/vim-fugitive'           " Git integración
  Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
  Plug 'https://github.com/preservim/nerdtree' " NerdTree
  Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
  Plug 'https://github.com/vim-airline/vim-airline' " Status bar
  Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
  Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
  Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
  Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
  Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
  Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
  Plug 'akinsho/nvim-bufferline.lua'
 
  call plug#end()

  colorscheme gruvbox
endif

nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-t> :TerminalSplit bash<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :xclip -selection clipboard<CR>
nnoremap <C-v> :xclip -selection clipboard -o<CR>

" Mapeos de teclas
" Ejemplo de mapeo para abrir la barra de estado de Airline
nnoremap <leader>a :AirlineToggle<CR>
