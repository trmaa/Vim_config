" Configuraciones básicas
set number        " Mostrar números de línea
set autoindent
set tabstop=4     " Tamaño de tabulación
set shiftwidth=4
set smarttab      " Tamaño de indentación
set encoding=utf-8
set softtabstop=4 " Tamaño de tabulación suave
set background=dark
set rtp +=~/.vim

" Importar plugins y configuraciones
if has('nvim')
  " Plugin Manager: Plug.vim
  call plug#begin('~/.config/nvim/plugged')

  " Ejemplo de plugins
  Plug 'HoNamDuong/hybrid.nvim'
  Plug 'tpope/vim-fugitive'           " Git integración
  Plug 'tpope/vim-surround'           " Surrounding ysw
  Plug 'preservim/nerdtree'           " NerdTree
  Plug 'tpope/vim-commentary'         " For Commenting gcc & gc
  Plug 'vim-airline/vim-airline'      " Status bar
  Plug 'ap/vim-css-color'             " CSS Color Preview
  Plug 'rafi/awesome-vim-colorschemes'" Retro Scheme
  Plug 'ryanoasis/vim-devicons'       " Developer Icons
  Plug 'tc50cal/vim-terminal'         " Vim Terminal
  Plug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
  Plug 'akinsho/nvim-bufferline.lua'  " Bufferline
  Plug 'ellisonleao/gruvbox.nvim'     " Gruvbox theme
  Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'npm ci' }

  call plug#end()
  
  " Configuración de tema
  colorscheme gruvbox
  " colorscheme everforest

endif

" Returns true if the color hex value is light
function! IsHexColorLight(color) abort
  let l:raw_color = trim(a:color, '#')

  let l:red = str2nr(substitute(l:raw_color, '(.{2}).{4}', '1', 'g'), 16)
  let l:green = str2nr(substitute(l:raw_color, '.{2}(.{2}).{2}', '1', 'g'), 16)
  let l:blue = str2nr(substitute(l:raw_color, '.{4}(.{2})', '1', 'g'), 16)

  let l:brightness = ((l:red * 299) + (l:green * 587) + (l:blue * 114)) / 1000

  return l:brightness > 155
endfunction

" Mapeos de teclas
" Ejemplo de mapeo para abrir la barra de estado de Airline
nnoremap <leader>a :AirlineToggle<CR>

" Atajos útiles
nnoremap <C-f> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>
nnoremap <C-t> :TerminalSplit bash<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-c> :xclip -selection clipboard<CR>
nnoremap <C-v> :xclip -selection clipboard -o<CR>
