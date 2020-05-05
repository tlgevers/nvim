"***********************************************************************************
"   __  ___         _               ____       __   __    _                   
"  /  |/  / ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / /|_/ / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/  /_/  \_,_/ /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                                                                 /___/
"
"***********************************************************************************



" Colorscheme
set background=light
" colorscheme gruvbox
" colorscheme wal
colorscheme sonokai

" let g:gruvbox_contrast_dark = 'soft'


augroup specify_filetype
    autocmd!
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.txt set filetype=text
augroup END

" set title for terminal tab
set title 
" set titlestring=%{expand(\"%:p:h\")}
set titlestring=%{substitute(getcwd(),\ $HOME,\ '~',\ '')}

" Shorter leader key timeout
set timeout timeoutlen=200

" Enable spell-checking for certain files
autocmd FileType text,markdown setlocal spell

" Limit line length for text files
autocmd FileType text,markdown,tex,vimwiki setlocal textwidth=80

" Enable spacing set to 2 for vue files
autocmd Filetype vue setlocal tabstop=2
autocmd Filetype js setlocal tabstop=2


" Don't automatically collapse markdown
set conceallevel=0

" Don't display mode in command line (airline already shows it)
set noshowmode

" Automatically re-read file if a change was detected outside of vim
set autoread

" no case-sensitive search unless uppercase is present
set ignorecase
set smartcase

" Enable mouse scroll
set mouse=a

" Allow a new buffer to be opened without saving current
set hidden

" Statusline Config
set statusline+=%F
set cmdheight=1

" Tab Settings
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set shiftround

" Enable syntax highlighting
syntax on

" better python highlighting
let g:python_highlight_all = 1

" Print syntax highlighting.
set printoptions+=syntax:y

" Matching braces/tags
set showmatch

" Keep a backup file.
"set backup

" Save undo tree.
"set undofile

" Do not back up temporary files.
set backupskip=/tmp/*,/private/tmp/*"

" Store backup files in one place.
set backupdir^=$HOME/.config/nvim//storage/backups//

" Store swap files in one place.
set dir^=$HOME/.config/nvim//storage/swaps//

" Store undo files in one place.
set undodir^=$HOME/.config/nvim/storage/undos//

" No line wrapping
set nowrap

" Turns on detection for fyletypes, indentation files and plugin files
filetype on
filetype plugin indent on

" Split window appears right the current one.
set splitright

" Split window appears below the current one.
set splitbelow

" Make sure compatible mode is disabled
set nocompatible

" Share yank buffer with system clipboard
set clipboard=unnamedplus

" Show next 3 lines while scrolling.
if !&scrolloff
    set scrolloff=3
endif

" Show next 5 columns while side-scrolling.
if !&sidescrolloff
    set sidescrolloff=5
endif

" Jump to the last known position when reopening a file.
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" highlight the current line in every window and update the highlight as the cursor moves.
set cursorline

" Relative line numbers
" set nonumber
" set norelativenumber
set number relativenumber
" augroup numbertoggle
  " autocmd!
  " autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  " autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END
"

" autofix lint issues on save
let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1



