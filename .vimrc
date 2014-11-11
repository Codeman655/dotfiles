"set nocompatible              " be iMproved, required
"filetype off                  " required

" set the runtime path to include Vundle and initialize
 "set rtp+=~/.vim/bundle/vundle/
 "call vundle#rc()
 " alternatively, pass a path where Vundle should install bundles
 "let path = '~/some/path/here'
 "call vundle#rc(path)

 " let Vundle manage Vundle, required
 "Bundle 'gmarik/vundle'

 " The following are examples of different formats supported.
 " Keep bundle commands between here and filetype plugin indent on.
 " scripts on GitHub repos
 "Bundle 'tpope/vim-fugitive'
 "Bundle 'Lokaltog/vim-easymotion'
 "Bundle 'tpope/vim-rails.git'
 "Bundle 'Valloric/YouCompleteMe'
 " The sparkup vim script is in a subdirectory of this repo called vim.
 " Pass the path to set the runtimepath properly.
 "Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 " scripts from http://vim-scripts.org/vim/scripts.html
 "Bundle 'L9'
 "Bundle 'FuzzyFinder'
 " scripts not on GitHub
"Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'
" ...

call plug#begin('~/.vim/plugged')
"Plug 'https://bitbucket.org/ns9tks/vim-l9'
Plug 'tpope/vim-fugitive'
Plug 'Lokaltog/vim-easymotion'
"Plug 'tpope/vim-rails.git'
"Plug 'Valloric/YouCompleteMe'
Plug 'rstacruz/sparkup'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-markdown'
"Plug 'vim-scripts/FuzzyFinder'
Plug 'hsitz/VimOrganizer'
Plug 'vim-scripts/Syntastic'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/vim-easy-align'


call plug#end()

filetype plugin indent on     " required
" "
" " Brief help
" " :BundleList          - list configured bundles
" " :BundleInstall(!)    - install (update) bundles
" " :BundleSearch(!) foo - search (or refresh cache first) for foo
" " :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
" "
" " see :h vundle for more details or wiki for FAQ
" " NOTE: comments after Bundle commands are not allowed.
"
set term=xterm
set showmatch               " Briefly jump to a paren once it's balanced
set matchtime=2             " (for only .2 seconds).

"""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

"""" Insert completion
set completeopt-=preview    " Don't show preview menu for tags.
set infercase               " Try to adjust insert completions for case.

"""" Folding
"augroup vimrc
 "au BufReadPre * setlocal foldmethod=indent
 "au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
"augroup END "For manual and indent folding
set foldmethod=indent " By default, use syntax to determine folds
set foldlevelstart=99       " All folds open by default
" set foldcolumn=1            " A visual indicator for folds

"""" Text Formatting
set formatoptions=q         " Format text with gq, but don't format as I type.
set formatoptions+=n        " gq recognizes numbered lists, and will try to
set formatoptions+=1        " break before, not after, a 1 letter word

"""" Display
"set number                  " Display line numbers
"set numberwidth=1           " using only 1 column (and 1 space) while possible

"""" Messages, Info, Status
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set confirm                 " Y-N-C prompt if closing with unsaved changes.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
"set laststatus=2            " Always show statusline, even if only 1 window.

"""" Tabs/Indent Levels
set autoindent              " Do dumb autoindentation when no filetype is set
set tabstop=4               " Real tab characters are 8 spaces wide,
set shiftwidth=2            " but an indent level is 2 spaces wide.
set softtabstop=2           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.

"""" Tags
set tags=./tags;/home       " Tags can be in ./tags, ../tags, ..., /home/tags.
set showfulltag             " Show more information while completing tags.
set cscopetag               " When using :tag, <C-]>, or "vim -t", try cscope:
set cscopetagorder=0        " try ":cscope find g foo" and then ":tselect foo"

"""" Reading/Writing
set noautowrite             " Never write a file unless I request it.
set noautowriteall          " NEVER.
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set ffs=unix,dos,mac        " Try recognizing dos, unix, and mac line endings.

"""" Command Line
set history=1000            " Keep a very long command-line history.
set wildmenu                " Menu completion in command mode on <Tab>
set wildmode=full           " <Tab> cycles between all matching choices.

"""" Backups/Swap Files
set updatetime=2000         " Write swap files after 2 seconds of inactivity.
set directory^=~/.backup//  " Swap files are also written to ~/.backup, too.

"""" Set the mouse
""set mouse=a

"""" Per-Filetype Scripts
" NOTE: These define autocmds, so they should come before any other autocmds.
"       That way, a later autocmd can override the result of one defined here.
filetype on                 " Enable filetype detection,
filetype indent on          " use filetype-specific indenting where available,
filetype plugin on          " also allow for filetype-specific plugins,
syntax on                   " and turn on per-filetype syntax highlighting.

" Pathogen plugins
"call pathogen#infect()
"
" <space> toggles folds opened and closed
nnoremap <space> za

" <space> in visual mode creates a fold over the marked range
vnoremap <space> zf

" Turn off annoyhing search highlights AFTER I've searched by pressing <esc>
"nnoremap <esc> :noh<return><esc>

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org 
au BufEnter *.org            call org#SetOrgFileType()

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. <Leader>aip)
nmap <Leader>a <Plug>(EasyAlign)
"
