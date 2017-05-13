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
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/po.vim'


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
"set cursorcolumn                                 "Highlight current column
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




