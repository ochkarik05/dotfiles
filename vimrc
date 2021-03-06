"===============================================================================
"
"
filetype plugin on
syn on                    " enable syntax hightlight
" OPTIONAL: This enables automatic indentation as you type.
filetype indent on
"
"-------------------------------------------------------------------------------
" Various settings
"-------------------------------------------------------------------------------
"
set guifont=Monospace\ 12
set backspace=indent,eol,start
set linebreak
set nocompatible          
set autoread              " read open files again when changed outside Vim
set autowrite             " write a modified buffer on each :next , ...
set browsedir  =current   " which directory to use for the file browser
set incsearch             " use incremental search
set shiftwidth =2         " number of spaces to use for each step of indent
set tabstop    =2         " number of spaces that a <Tab> in the file counts for
set visualbell            " visual bell instead of beeping
set autoindent            " enable autoindents
set smartindent           " enable smartindents
set formatoptions=rocq
set foldmethod=syntax
set ignorecase smartcase
set tabpagemax=20
set virtualedit=all " 
set wildmenu  " command-line completion operates in an enhanced mode
set wildignore=*.bak,*.o,*.e,*~ " a file that matches with one of these
set laststatus=2
"set fileencodings=utf-8,cp1251,cp866
set statusline=[pwd=%{getcwd()}]\ [FENC=%{&fileencoding}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set guioptions-=T
set nu
set mousemodel=extend
set clipboard+=unnamed


nnoremap <leader>vs :source ~/.vimrc<CR>


set expandtab
"folding settings
set foldmarker={,}
set foldmethod=marker
set foldtext=substitute(getline(v:foldstart),'{.*','{...}',)
set foldcolumn=3
set foldlevelstart=1
"set fileencoding=utf-8
set encoding=utf-8
set swb=usetab,newtab
set nowrap

"set completeopt-=preview
"set completeopt+=longest
"---------------------------------------------------------------------------
set cursorline
set grepprg=grep\ -nH\ $*
"
"---------------------------------------------------------------------------
"Lang settings
"---------------------------------------------------------------------------
set keymap=russian-jcukenwin
set iminsert=2            
set imsearch=2            
set iskeyword=@,48-57,_,192-255
set scrolloff=3 "Count lines to keep above and below the cursor
"---------------------------------------------------------------------------
set complete+=.
set complete+=b
set complete+=t


"-------------------------------------------------------------------------------
"  some additional hot keys
"-------------------------------------------------------------------------------
"    F2   -  write file without confirmation
"    F3   -  call file explorer Ex
"    F4   -  show tag under curser in the preview window (tagfile must exist!)
"    F6   -  display previous error
"    F7   -  display next error
"    F8   -  show/hide errors
"-------------------------------------------------------------------------------
"
map   <silent> <F2>    :write<CR>
"
imap  <silent> <F2>    <Esc>:write<CR>
imap  <silent> <F3>    <Esc>:Sex<CR>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
nmap <BS> <C-B>

source ~/.vim_common_mapping

call plug#begin('~/.vim/plugged')

Plug 'meain/vim-colorswitch'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

call plug#end()
