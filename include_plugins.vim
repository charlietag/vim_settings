" ------------------------------------------------------------
" Ref. https://github.com/junegunn/vim-plug
" ------------------------------------------------------------
" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
"   - Plugin will be downloaded in folder '~/.vim/plugged/*'
call plug#begin('~/.vim/plugged')

" ------------------------------------------------------------
" Make sure you use single quotes
" ------------------------------------------------------------

  Plug 'godlygeek/tabular'
  Plug 'jiangmiao/auto-pairs'
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'vim-airline/vim-airline'
  Plug 'tpope/vim-sensible'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-obsession'
  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'
  Plug 'mattn/emmet-vim'
  Plug 'tomtom/tcomment_vim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-endwise'
  Plug 'vim-ruby/vim-ruby'
  Plug 'ap/vim-css-color'
  Plug 'charlietag/nginx.vim'
  Plug 'charlietag/lucid_tag.vim'

" ------------------------------------------------------------
" Initialize plugin system
" ------------------------------------------------------------
call plug#end()
