set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Package manager
Plugin 'VundleVim/Vundle.vim'

" Fuzzy file finder
Plugin 'ctrlpvim/ctrlp.vim'

" Theme gruvbox
Plugin 'morhetz/gruvbox'


" Clang format files
Plugin 'rhysd/vim-clang-format'

call vundle#end()
filetype plugin indent on

syntax on

" Ignore C/C++ Object files
set wildignore+=*.o,*.obj
set wildignore+=*.ilk
set wildignore+=*/build/*

" Ignore generated C/C++ Qt files
set wildignore+=moc_*.cpp,moc_*.h

" Disable swap file. Some people say to keep swap file enabled but in a
" temporary folder instead. I dislike the dialog that pops up every now and
" then if a swapfile is left so I just leave it fully disabled
set noswapfile


" Let backspace delete indentations, newlines, and don't make it stop after
" reaching the start of your insert mode
set backspace=indent,eol,start

" Incremental search. start searching and moving through the file while typing
" the search phrase
set incsearch

set showmode
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set cindent
set mouse=a
set cursorline
set numberwidth=6
set encoding=utf-8
set noesckeys
set rnu
set number
set nowrap

" Customize our status line
set statusline=%f%m%r%h%w\ 
set statusline+=[%{&ff}]
set statusline+=%=
set statusline+=[\%03.3b/\%02.2B]\ [POS=%04v]

set laststatus=2


" Colorscheme:
set t_Co=256
colorscheme gruvbox
let g:gruvbox_underline = '0'
set background=dark


" Fix cursor
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
autocmd VimEnter * normal "i"

"if &t_Co == 256
    " If we're on a 256-color terminal, use pixelmuerto color scheme
    " colorscheme pixelmuerto
    "colorscheme gruvbox
"else
    " Else fall back to ron
    "colorscheme ron
"endif

" Make a slight customization with the cursorline to the ron theme
"set cursorline
"hi CursorLine term=bold cterm=bold guibg=Grey40

" Store an undo buffer in a file in $HOME/.vimundo
set undofile
set undodir=$HOME/.config/.vimundo
set undolevels=1000
set undoreload=10000

" Unbind F1 (it used to show you a help menu)
nnoremap <F1> <nop>

" Unbind Shift+K, it's previously used for opening manual or help or something
map <S-k> <Nop>

let mapleader = "\<Space>"

au FileType javascript setlocal ts=2 sw=2 sts=2
au FileType html setlocal ts=2 sw=2 sts=2
au FileType css setlocal ts=2 sw=2 sts=2

" ctrlpvim/ctrlp.vim extension options
" let g:ctrlp_cmd = 'CtrlP .'
let g:ctrlp_working_path_mode = 'rwa'

nnoremap <silent> <C-B> :CtrlPBuffer<CR>
nnoremap <silent> <C-K> :CtrlPMixed<CR>

" clang-format extension options
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable

let g:clang_format#enable_fallback_style = 0

" LaTeX
"filetype plugin indent on
"set grepprg=grep\ -nH\ $*
"let g:Tex_Flavor = "latex"
"let g:Tex_DefaultTargetFormat='pdf'
"let g:Tex_MultipleCompileFormats='pdf, aux'
"
"map <Leader>t :w <CR> :silent !xelatex -output-format=pdf otomad.tex <CR> :redraw! <CR>
"
"" If there is a space at the end of a line add a dot
set list
set listchars=tab:\ \ ,trail:·,extends:> 
"
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q" 
