"
"             _
"      _   __(_)___ ___  __________
"     | | / / / __ `__ \/ ___/ ___/
"    _| |/ / / / / / / / /  / /__
"   (_)___/_/_/ /_/ /_/_/   \___/
"
"   T_S / RTX1911 [@T_SRTX1911]
"   http://www.rtx1911.net/T_S/
"


"""""""""""""""""""""""""" VIM default configuration """""""""""""""""""""""""""

"gnome-terminal color fix
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

"Match new line indent to current line
set autoindent

"Backup file dir
"set backupdir=$HOME/vimbackup

"Browsedir
set browsedir=buffer

"Clipboard
set clipboard=unnamed

"No Vi compatible
set nocompatible

"Swap file dir
"set directory=$HOME/vimbackup

"Use space for tab
set expandtab

"show other file without save.
set hidden

"incsearch
set incsearch

"Highlight search
set hlsearch

"Show line number
set number

"Shift width
set shiftwidth=4

"Show match ( and ) something like that.
set showmatch

"Divide search between a and A. something like that.
set smartcase

"Smart indent (very useful)
set smartindent

"indent for C
set cindent

"When type ahead of line, indent shiftwidth
set smarttab

"Tab size
set tabstop=4
set softtabstop=4

"Won't stop head of line and end of line.
set whichwrap=b,s,h,l,<,>,[,]

"No loop while searching.
set nowrapscan

"Show Mode (INSERT, REPLACE, VISUAL)
set showmode

"Change Terminal title
set title

"Show where cursor is
set ruler

"Show commands
set showcmd

"Syntax on
syntax on

"Always show status line end of line 2.
set laststatus=2

"Show line
set cursorline

"Show column line
"set cursorcolumn

"Wild menu
set wildmenu

"Ask unsaved change
set confirm

"Turn on mouse support
set mouse=a

"Set backspace function (For windows)
set backspace=start,eol,indent

"IME disable
set iminsert=0
set imsearch=1

"Save previous session cursor place
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

"encoding
scriptencoding utf-8
set encoding=utf-8

"Show hidden chars
"set listchars=eol:$,tab:>\ ,extends:<
set listchars=eol:¬,tab:\|\ ,trail:-,nbsp:%,extends:>,precedes:<
set list

"No return
set nowrap

"GUI
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Andale\ Mono:h12
  elseif has("gui_win32")
    set guifont=Consolas:h9:cANSI
  endif
endif

"Multi Indent
vnoremap < <gv
vnoremap > >gv

if has("autocmd")
  filetype plugin on
  filetype indent on
  "autocmd FileType php filetype indent off

  autocmd FileType apache     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType aspvbs     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType c          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cpp        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType cs         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType diff       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType eruby      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType java       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript setlocal sw=4 sts=4 ts=4 et
  autocmd FileType perl       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType php        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python     setlocal sw=4 sts=4 ts=4 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType sh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sql        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vb         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType wsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xhtml      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType xml        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType yaml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType zsh        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala      setlocal sw=2 sts=2 ts=2 et
endif






""""""""""""""""""""""""""""""""" Color Scheme """""""""""""""""""""""""""""""""

"Molokai color scheme
let g:molokai_original = 1
let g:rehash256 = 1
colorscheme molokai



"""""""""""""""""""""""""""""""""" NeoBundle """""""""""""""""""""""""""""""""""

 " Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   set nocompatible               " Be iMproved

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck




"""""""""""""""""""""""""""""" NeoBundle Packages """"""""""""""""""""""""""""""

"vimproc
NeoBundle 'Shougo/vimproc.vim', {
      \ 'build' : {
      \     'windows' : 'tools\\update-dll-mingw',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }

"Unite
NeoBundle 'Shougo/unite.vim'

"Light Line
NeoBundle 'itchyny/lightline.vim'

"NERDtree (:NERDtree)
NeoBundle 'scrooloose/nerdtree'

"NERDcommenter
NeoBundle 'scrooloose/nerdcommenter'

"Vim filer
NeoBundle 'Shougo/vimfiler.vim'

"Vim shell
NeoBundle 'Shougo/vimshell.vim'

"surround
NeoBundle 'tpope/vim-surround'

"Command repeat
NeoBundle 'tpope/vim-repeat'

"vim toggle
NeoBundle 'taku-o/vim-toggle'

"echodoc
NeoBundle 'Shougo/echodoc.vim'

"smartchr
NeoBundle 'kana/vim-smartchr'

"Git
NeoBundle 'motemen/git-vim'

"Git branch
NeoBundle 'tpope/vim-fugitive'

NeoBundle 'rails.vim'

"sudo
NeoBundle 'sudo.vim'

"Align
NeoBundle 'Align'

"Bin
NeoBundle 'Shougo/vinarise.vim'

"tab
NeoBundle 'fholgado/minibufexpl.vim'

"Indent Coloring
NeoBundle 'nathanaelkane/vim-indent-guides'

"Show End of the line space
NeoBundle 'bronson/vim-trailing-whitespace'

"Auto close ()
NeoBundle 'Townk/vim-autoclose'

"Japanese Document
NeoBundle 'vim-jp/vimdoc-ja'

"Neocomplcache
NeoBundle 'Shougo/neocomplcache'

"Neosnippet
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'

"clang complete
NeoBundle 'Rip-Rip/clang_complete'

"Quickrun"
NeoBundle 'thinca/vim-quickrun'

"Java complete
NeoBundleLazy 'vim-scripts/javacomplete', {
\   'build': {
\       'cygwin': 'javac autoload/Reflection.java',
\       'mac': 'javac autoload/Reflection.java',
\       'unix': 'javac autoload/Reflection.java',
\   },
\}

"Matrix screen saver (:Matrix)
NeoBundle 'uguu-org/vim-matrix-screensaver'

"OpenGL
NeoBundle 'beyondmarc/opengl.vim'
NeoBundle 'tikhomirov/vim-glsl.vim'
autocmd BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl
  \ set filetype=glsl
NeoBundle 'hints_opengl.vim'
NeoBundle 'tikhomirov/vim-glsl'

"Calender
NeoBundle 'itchyny/calendar.vim'

"Include complete
NeoBundle 'xaizek/vim-inccomplete'

"Tag list
NeoBundle 'taglist.vim'
let Tlist_Show_One_File = 1
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1

 NeoBundleLazy 'rhysd/vim-clang-format', {
             \ 'autoload' : {'filetypes' : ['c', 'cpp', 'objc']}
             \ }

"Emmet
NeoBundle 'mattn/emmet-vim'

"HTML5
NeoBundle 'othree/html5.vim'

"CSS3 Syntax
NeoBundle 'hail2u/vim-css3-syntax'

"HTML5 Validator
NeoBundle 'hokaccha/vim-html5validator'

"syntastic
NeoBundle 'scrooloose/syntastic'

"Javascript
NeoBundle 'pangloss/vim-javascript'

"Changed
NeoBundle 'vim-scripts/Changed'

"Highlight-UnMatched-Brackets
NeoBundle 'vim-scripts/Highlight-UnMatched-Brackets'
set matchpairs+=<:>

"Multiple cursors (Ctrl-n)
NeoBundle 'terryma/vim-multiple-cursors'

"Closetag (HTML)
NeoBundle 'vim-scripts/closetag.vim'




""""""""""""""""""""""""""""""""" Light Line """""""""""""""""""""""""""""""""""

let g:lightline = {
      \ 'colorscheme': 'landscape',
      \ 'mode_map': { 'c': 'NORMAL' },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'fugitive', 'filename' ] ]
      \ },
      \ 'component_function': {
      \   'modified': 'MyModified',
      \   'readonly': 'MyReadonly',
      \   'fugitive': 'MyFugitive',
      \   'filename': 'MyFilename',
      \   'fileformat': 'MyFileformat',
      \   'filetype': 'MyFiletype',
      \   'fileencoding': 'MyFileencoding',
      \   'mode': 'MyMode',
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

function! MyModified()
  return &ft =~ 'help\|vimfiler\|gundo' ? '' : &modified ? '+' : &modifiable ? '' : '-'
endfunction

function! MyReadonly()
  return &ft !~? 'help\|vimfiler\|gundo' && &readonly ? "[Readonly]" : ''
endfunction

function! MyFilename()
  return ('' != MyReadonly() ? MyReadonly() . ' ' : '') .
        \ (&ft == 'vimfiler' ? vimfiler#get_status_string() :
        \  &ft == 'unite' ? unite#get_status_string() :
        \  &ft == 'vimshell' ? vimshell#get_status_string() :
        \ '' != expand('%:t') ? expand('%:t') : '[No Name]') .
        \ ('' != MyModified() ? ' ' . MyModified() : '')
endfunction

function! MyFugitive()
  if &ft !~? 'vimfiler\|gundo' && exists("*fugitive#head")
    let _ = fugitive#head()
    return strlen(_) ? "[Fugitive] "._ : ''
  endif
  return ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction

function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype : 'no ft') : ''
endfunction

function! MyFileencoding()
  return winwidth(0) > 70 ? (strlen(&fenc) ? &fenc : &enc) : ''
endfunction

function! MyMode()
  return winwidth(0) > 60 ? lightline#mode() : ''
endfunction




""""""""""""""""""""""""""""""""" Indent guides """"""""""""""""""""""""""""""""

"Turn on indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=darkgrey
hi IndentGuidesEven ctermbg=lightgrey


"""""""""""""""""""""""""""""""" Neocomplcache """""""""""""""""""""""""""""""""

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Enable heavy features.
" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplcache#smart_close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplcache#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplcache#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplcache#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplcache#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplcache#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplcache#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplcache_enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplcache_enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_force_omni_patterns')
  let g:neocomplcache_force_omni_patterns = {}
endif
let g:neocomplcache_force_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplcache_force_omni_patterns.perl = '\h\w*->\h\w*\|\h\w*::'




""""""""""""""""""""""""""""""""" Neosnippet """""""""""""""""""""""""""""""""""

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif




""""""""""""""""""""""""""""""" clang_complete """""""""""""""""""""""""""""""""

let g:clang_periodic_quickfix = 1
let g:clang_complete_copen = 1
let g:clang_use_library = 1
let g:clang_library_path='/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'



""""""""""""""""""""""""" Additional complete option """""""""""""""""""""""""""

let g:neocomplcache_force_overwrite_completefunc=1

if !exists("g:neocomplcache_force_omni_patterns")
    let g:neocomplcache_force_omni_patterns = {}
endif

let g:neocomplcache_force_omni_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|::'


let g:clang_complete_auto=0




""""""""""""""""""""""""""""""""""""" Java """""""""""""""""""""""""""""""""""""

let g:java_highlight_all=1
let g:java_highlight_debug=1
let g:java_allow_cpp_keywords=1
let g:java_space_errors=1
let g:java_highlight_functions=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:vimfiler_as_default_explorer = 1
let NERDTreeShowHidden = 1

let NERDSpaceDelims = 1
nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup cpp-path
    autocmd!
    autocmd FileType cpp setlocal path=.,/usr/include,/usr/local/include,/usr/lib/c++/v1
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#802020
let &colorcolumn="80,".join(range(120,999),",")


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
