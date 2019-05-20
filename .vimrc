" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'rust-lang/rust.vim'
Plug 'w0rp/ale'
"Plug 'itchyny/lightline.vim' Airline alternative
Plug 'terryma/vim-multiple-cursors'
Plug 'valloric/youcompleteme'
Plug 'chrisbra/Colorizer'
Plug 'morhetz/gruvbox'
call plug#end()

"Extra good hacks for extra spiciness
set nocompatible
syntax enable
filetype plugin on
set path+=**
set wildmenu

set showcmd "very cool

"File browser config
let g:netrv_banner=0
let g:netrv_browse_split=4
let g:netrv_altv=1
let g:netrv_liststyle=3

set timeoutlen=1000 ttimeoutlen=0
set t_Co=256
set background=dark

set guifont=Nerd\ Font\ 12
" air-line
let g:airline_powerline_fonts = 1

set noshowmode

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'


" airline symbols
"let g:airline_left_sep = '█▇▆▅▄▃▂▁'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"let g:airline_right_sep = '▁▂▃▄▅▆▇█'
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"Color highlight
"let g:colorizer_syntax = 1
"let g:colorizer_auto_color = 1

"Colorscheme
let g:gruvbox_italic=1
colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=none

set number relativenumber

"Permanent undo
set undodir=~/.vimdid
set undofile

syntax on

"Arrow keys ( ͡° ͜ʖ ͡°) nono! Use homerow keys..
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"Automatically insert matching brace
inoremap { {<CR>}<Esc>ko
inoremap ( ()<Esc>i
inoremap [ []<Esc>:let leavechar="]"<CR>i

"Enable mouse
set mouse=a

"I don't really know what's this but it makes Sublime like"
set listchars=nbsp:␣,eol:↲,tab:»\ ,extends:›,precedes:‹,trail:•
let &showbreak='↳ '
