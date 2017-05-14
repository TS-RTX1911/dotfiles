"
"     ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"     ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"     ██║   ██║██║██╔████╔██║██████╔╝██║
"     ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║
"   ██╗╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"   ╚═╝ ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"
"   Created by Tomoki "FL1NE" SHISHIKURA (@FL1NE)
"   (https://fl1ne.rtx1911.net)
"


set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/
call vundle#begin()

"Use :VundleInstall to Install Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'
Plugin 'chrisbra/csv.vim'
Plugin 'jreybert/vimagit'
Plugin 'kien/ctrlp.vim'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'chrisbra/NrrwRgn'
Plugin 'tpope/vim-capslock'
Plugin 'wesQ3/vim-windowswap'
Plugin 'tpope/vim-obsession'
Plugin 'vim-ctrlspace/vim-ctrlspace'
Plugin 'vim-scripts/po.vim'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-jp/vimdoc-ja'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/sudo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'vim-scripts/Changed'
Plugin 'vim-scripts/Highlight-UnMatched-Brackets'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/closetag.vim'
Plugin 'tpope/vim-repeat'
Plugin 'motemen/git-vim'
Plugin 'vim-scripts/Align'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'Townk/vim-autoclose'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/'taglist.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'hokaccha/vim-html5validator'
Plugin 'pangloss/vim-javascript'


call vundle#end()
filetype plugin indent on


" ================= GUI options =================

set guioptions-=m                                "Remove menu bar
set guioptions-=T                                "Remove toolbar
set guioptions-=L                                "Remove left scrollbar
set guioptions-=r                                "Remove left scrollbar
set guioptions-=l                                "Remove left scrollbar

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Andale\ Mono\ for\ Powerline\ 12
  elseif has("gui_macvim")
    set guifont=Andale\ Mono\ for\ Powerline:h12
  elseif has("gui_win32")
    set guifont=Andale\ Mono\ for\ Powerline:h9:cANSI
  endif
endif


" =============== General Config ================

set t_Co=256                                     "Set 256 colors
set title                                        "Change terminal title
set number                                       "Line numbers
set backspace=indent,eol,start                   "Allow backspace
set history=500                                  "Store many command history
set showcmd                                      "Show incomplete command
set noshowmode                                   "Hide mode for Powerline
set gdefault                                     "Set global flag
set cursorline                                   "Highlight current line
set autoread                                     "Reload files changed outside
set smartcase                                    "Smart case search
set ignorecase                                   "case insensitive search
set hlsearch                                     "Highlight search term
set incsearch                                    "Jump to found term
set showmatch                                    "Highlight matching bracket
set mouse=a                                      "Enable mouse
set nostartofline                                "Jump to first character
set timeoutlen=1000 ttimeoutlen=200              "Reduce Command timeout
set laststatus=2                                 "Show statusbar
set fileencoding=utf-8 encoding=utf-8            "Set utf-8 encoding
scriptencoding utf-8                             "Set utf-8 encoding
set wrap                                         "Enable word wrap
set linebreak                                    "Wrap lines
set listchars=eol:¬,tab:\ \ ,trail:·             "Set trails
set list                                         "Enable listchars
set lazyredraw                                   "lazyredraw
set completeopt-=preview                         "Disable preview
set hidden                                       "Hide buffers in background
set splitright                                   "Set up new splits positions
set tags=./tags;/                                "Find tags file
set whichwrap=b,s,h,l,<,>,[,]                    "Better cursor move
set confirm                                      "Ask unsaved change
set cindent                                      "C Indent
set cinoptions+=:0,g0                            "C Indent Options
set smarttab                                     "Use smarttab
set shiftwidth=4                                 "Shit size is 4
set expandtab                                    "Use spaces for tab
set tabstop=4                                    "Tab size is 4
set softtabstop=4                                "Tab size is 4
set smartindent                                  "Smart indent
set autoindent                                   "Auto indent
set nofoldenable                                 "No foldenable
vnoremap < <gv                                   "Multi indent
vnoremap > >gv                                   "Multi indent
set imdisable                                    "Disable IME on mode change
set wildmenu
set wildmode=full

set conceallevel=2 concealcursor=i               "neosnippets conceal marker


" ================ Color Scheme =================

syntax on                                        "turn on syntax highlighting
let g:enable_bold_font = 1                       "Enable bold font
set background=dark                              "Set background to dark
colorscheme hybrid_material                      "Set color scheme

highlight ColorColumn ctermbg=10 guibg=#475B62   "Deadzone Color
let &colorcolumn="80,".join(range(120,999),",")  "Deadzone set at (80, 120)

autocmd ColorScheme * highlight LineNr ctermfg=230
hi LineNr ctermbg=236 ctermfg=230                "Line number color fix


" ================ Auto Commands ================

"Save previous session cursor place
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

autocmd BufWritePre * %s/\s\+$//e   "trim_trailing_white_space_on_save


" ============ Zenkaku space finder =============

function! ZenkakuSpace()
    highlight ZenkakuSpace ctermbg=1 ctermfg=1 guibg=#FF0000
endfunction

if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme * call ZenkakuSpace()
        autocmd VimEnter,WinEnter,BufRead * let w:m1=matchadd('ZenkakuSpace', '　')
    augroup END
    call ZenkakuSpace()
endif


" =============== Plugin Settings ===============

let g:airline_powerline_fonts = 1                "Enable powerline fonts
let g:airline_theme = "solarized"                "Set theme to Solarized
let g:airline_section_y = '%{substitute(getcwd(), expand("$HOME"), "~", "g")}'
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '│'


set updatetime=250
let g:gitgutter_sign_column_always = 1


let g:NERDTreeChDirMode = 2                      "Always change the root
let g:NERDTreeMinimalUI = 1                      "Disable help text and
let g:NERDTreeShowHidden = 1                     "Show hidden files
let g:NERDTreeIgnore=['\.git$', '\.sass-cache$', '\.vagrant', '\.idea']


let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


nmap ,, <Plug>NERDCommenterToggle
vmap ,, <Plug>NERDCommenterToggle


let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
let g:syntastic_error_symbol = "x"
let g:syntastic_style_error_symbol = "x"
let g:syntastic_warning_symbol = "▵"
let g:syntastic_style_warning_symbol = "▵"
let g:syntastic_loc_list_height = 5
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 3
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_scss_checkers = []


set matchpairs+=<:>


autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
"autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim


"Turn on indent guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  ctermbg=darkgrey guibg=#475B62
hi IndentGuidesEven ctermbg=lightgrey guibg=#677B82


