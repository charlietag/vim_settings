"*********************************
"       Charlie Customize - Load plugin
"*********************************
"------------Load pathogen(VIM plugin manager)-------------
"execute pathogen#infect()

"------------Load junegunn/vim-plug (VIM plugin manager)-------------
source $HOME/.vim/vim_settings/include_plugins.vim

"------------Plugin: nerdtree------------
map <C-n> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-k> :tabp<CR>

" Move current tab position afterward
nnoremap <Leader>k :tabm -1<CR>
" Move current tab position forward
nnoremap <Leader>l :tabm +1<CR>

"------------Plugin: gitgutter------------
set updatetime=100
let g:gitgutter_map_keys = 0
nmap ]g <Plug>(GitGutterNextHunk)
nmap [g <Plug>(GitGutterPrevHunk)

" Default enable gitgutter
"let g:gitgutter_enabled = 0
"nnoremap [g :GitGutterEnable<CR>
"nnoremap ]g :GitGutterDisable<CR>
nnoremap [t :GitGutterToggle<CR>

" load highlight in lucid.vim
" autocmd VimEnter * :ighlight GitGutterAdd     guifg=#009900 guibg=none ctermfg=2 ctermbg=none cterm=bold
" autocmd VimEnter * :ighlight GitGutterChange  guifg=#bbbb00 guibg=none ctermfg=3 ctermbg=none cterm=bold
" autocmd VimEnter * :ighlight GitGutterDelete  guifg=#ff2222 guibg=none ctermfg=1 ctermbg=none cterm=bold

"------------Plugin: vim-airline------------
set laststatus=2
let g:airline_theme = 'dark'
"let g:airline_theme = 'powerlineish'

" Enable tabline theme
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#tab_nr_type = 1

" Re-define airline symbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
"let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
" let g:airline_symbols.paste = '                            ✂️ Paste Mode 📋   (Before save :set nopaste❗️)                        '
let g:airline_symbols.paste = '                                                                           ✂️                                                                            '
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" --- work with plugin tpope/vim-obsession ----
if !exists('g:airline#extensions#obsession#indicator_text')
  let g:airline#extensions#obsession#indicator_text = '---Obsession---'
endif

"------------Plugin: vim-obsession------------
" This plugin will only deal with session like : layout, which file is opened , and in tab
"   This will not effect whethere your file is saved or not!
"   So no worry if Session.vim exists, just see Session.vim file as xxx.swp.
"   Session.vim is not a big deal file
" This one seems not really useful as below
nnoremap <C-u> :Obsess<CR>

" Just use this one as Obsession toggling
nnoremap <C-i> :Obsess!<CR>

"------------Plugin: vim-rails (not enabled by default) ------------
" Avoid gf find error
" map gf    :R<CR>

"------------Plugin: tabular------------
map t= :Tabularize /=<CR>
map t, :Tabularize /,<CR>
map t: :Tabularize /:<CR>
map t\| :Tabularize /\|<CR>
map t<SPACE>  :Tabularize /\S\+<CR>
map tt  :Tabularize /\t<CR>


"------------Plugin: easymotion/vim-easymotion ------------
" Quick move to the begining of words
nmap  <Leader>w <Plug>(easymotion-bd-w)
" So slow add this one, althrough it's useful while vimdiff (cross window)
" nmap <Leader>w <Plug>(easymotion-overwin-w)

"------------Plugin: mattn/emmet-vim ------------
" Ref. https://github.com/kaochenlong/cch/tree/master/plugin
" enable Emmet only in HTML and CSS files
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,eruby,php EmmetInstall

" map <Tab> to trigger Emmet (insert mode)
autocmd Filetype html,css,scss,eruby,php imap <silent> <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"------------Plugin: tomtom/tcomment_vim ------------
" Select mode : add / remove comment
" <Ctrl> + / + /

"------------Plugin: vim-ruby/vim-ruby ------------
" select within method (v->i->m) or class (v->i->M)


"*********************************
"       Charlie Customize
"*********************************

"------------VIM Colorscheme------------
silent! colorscheme lucid_tag
"colorscheme slate

"------------VIM Setting------------
filetype plugin indent on
syntax on
set number
set nocompatible
set t_Co=256
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cursorline
set cursorcolumn
set showtabline=2
set hlsearch
"set mouse=a

" Show current command
set showcmd

"pastetoggle
nnoremap <F10> :set invpaste paste?<CR>
set pastetoggle=<F10>
set showmode

"Quick tab to spaces
nnoremap TT :retab<CR>

"Quick clear current search
"nnoremap <F12> :noh<CR>
nnoremap <Leader><space> :noh<CR>

" -----------------------------------------------------------------------
"               useful for vim window
" -----------------------------------------------------------------------
" --- map ---
nnoremap ; <C-w>

" useful command (ref http://vimdoc.sourceforge.net/htmldoc/windows.html)
" -------------------------------------------------
" window - resizing
" -------------------------------------------------

" --- width (decrease / increase) ---
" ; <
" ; >

" --- height (decrease / increase) ---
" ; -
" ; +

" --- Maximize ( height / width) & back to all window ---
" ; _
" ; |
" ; =

" --- Equal all height / width ---
" ; =

" -------------------------------------------------
" window - move around
" -------------------------------------------------
" --- Move current window to new Tab ---
" ; T

" --- Move the current window to the most ( top / bottom / left / right ) split ---
" ; K
" ; J
" ; H
" ; L

" --- Rotate window ---
" ; r

" --- Swap window with prev window ---
" ; x

" -------------------------------------------------
" File - open the same file in (vertical / horizantal) split at the same time
" -------------------------------------------------
" useful for a very long file, one for editing top content , one for editing bottom content
" (at the current file) ; v
" (at the current file) ; s

" -------------------------------------------------
"    opening file
" -------------------------------------------------
" ref. https://silverwind1982.pixnet.net/blog/post/346179083
" --------------
" vim multiple file in (vertical / horizantal / tab)
" --------------
"  vim -o
"  vim -O
"  vim -p
"
" --------------
" NerdTree
" --------------
" --- NerdTree open in new ( tab / vertical split / horizantal split ) ---
" T : open in new tab
" i : open in horizantal split
" s : open in vertical split







" -----------------------------------------
"       Do some commands before save everytime in VIM
"           1. retab : tab -> spaces
"           2. removing all trailing whitespace
" -----------------------------------------
"function BeforeSaveCommands()
" :retab
" :%s/\s\+$//e
" :w
"endfunction
"autocmd BufWritePre,BufEnter * :call BeforeSaveCommands()

"BufReadPost - will not show symbol(+), to remind you to save, so I add :w to auto-save after Commands
"autocmd BufWritePre,BufReadPost * :retab | :%s/\s\+$//e | :w

"BufEnter (recommend) - will show symbol(+), to remind you to save (add :w for lazy me, but this will change file timestamp everytime I just open file)
"autocmd BufWritePre,BufEnter * :retab | :%s/\s\+$//e | :w

" -----------------------------------------
"/g - will cause error
"autocmd BufWritePre,BufEnter * :retab | :%s/\s\+$//g | :w

"/e - will escape special characters

"autocmd BufWritePre,BufEnter * :retab | :%s/\s\+$//e | :w
  " Remove Spaces then save

"autocmd BufWritePre,BufEnter * :retab | :%s/\s\+$//e
  " --> Remove spaces before save and at the moment opening files
  " --> Error occurs when reading VIM HELP docs

autocmd BufWritePre * :retab | :%s/\s\+$//e
  " --> Remove spaces before save




" -----------------------------------------
"       For Old Version of VIM
" -----------------------------------------
" enable true color
"if has("termguicolors")
"    " fix bug for vim
"    let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
"    let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
"
"    " enable true color
"    set termguicolors
"endif

" Prevent Vim Clearing Screen on Exit
"set t_ti= t_te=




" -----------------------------------------
"       Load all config under ~/.vimrc.d/*.vim
" -----------------------------------------
for CONFIG in split(glob('~/.vimrc.d/*.vim'), '\n')
     exe 'source' CONFIG
endfor


" -----------------------------------------
" For TerraForm format
" -----------------------------------------
let g:terraform_fmt_on_save=1

" -----------------------------------------
" For ansible format
" -----------------------------------------
let g:ansible_unindent_after_newline = 1
let g:ansible_name_highlight = 'd'
let g:ansible_extra_keywords_highlight = 1

" Configure TComment to use # for ini files
let g:tcomment_types = get(g:, 'tcomment_types', {})
let g:tcomment_types['dosini'] = '# %s'
let g:tcomment_types['ini'] = '# %s'

" -----------------------------------------
"       For github copilot remap tab to Ctrl-g
" -----------------------------------------
" Not working
" if exists("*copilot#Accept")
"   " html
"   autocmd FileType html inoremap <silent><expr> <C-g> copilot#Accept("\<CR>")
"
"   " erb
"   autocmd FileType eruby inoremap <silent><expr> <C-g> copilot#Accept("\<CR>")
" endif

" html
autocmd FileType html inoremap <silent><expr> <C-g> copilot#Accept("\<CR>")

" erb
autocmd FileType eruby inoremap <silent><expr> <C-g> copilot#Accept("\<CR>")
