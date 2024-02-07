
"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.local/share/nvim/plugged')

" Golang Support https://github.com/fatih/vim-go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" Plug 'tpope/vim-rhubarb'

Plug 'rhysd/git-messenger.vim'

"Magit
Plug 'jreybert/vimagit'

" FZF
set rtp+=~/.vim/bundle/fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Code Snippets Engine
" Plug 'SirVer/ultisnips'

" Snippets for ultisnips
" Plug 'honza/vim-snippets'

" Vim Surround
Plug 'tpope/vim-surround'

" Comments
Plug 'tpope/vim-commentary'

"Vim Motion
Plug 'easymotion/vim-easymotion'

" Auto pairs
" Plug 'jiangmiao/auto-pairs'

"Rainbow Brackets
Plug 'luochen1990/rainbow'


" Multiple Cursors
" Plug 'terryma/vim-multiple-cursors'

"" Indent guides
 Plug 'Yggdroot/indentLine'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Smart completion (to work with CoC)
" Plug 'zxqfl/tabnine-vim'

" Custom start page
 Plug 'mhinz/vim-startify'

" Vim Javascript
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'

" Language Packs
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tabular auto-align
" Plug 'godlygeek/tabular'

" Comfy scroll
" Plug 'yuttie/comfortable-motion.vim'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'liuchengxu/vista.vim'

" NERDTree
Plug 'scrooloose/nerdtree'
" Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Emoji support
" Plug 'junegunn/vim-emoji'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" vim wiki for notes
Plug 'vimwiki/vimwiki'

" integrate vimwiki with taskwarrior
Plug 'tbabej/taskwiki'

" todo.txt
Plug 'freitass/todo.txt-vim'
Plug 'aserebryakov/vim-todo-lists'

"Colorschemes
Plug 'sainnhe/sonokai'
Plug 'sdothum/vim-colors-duochrome'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'

" Show CSS colors
Plug 'ap/vim-css-color'

" Wal theme
Plug 'dylanaraps/wal.vim'
Plug 'deviantfero/wpgtk.vim'


"Markdown
Plug 'rmagatti/goto-preview'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'mzlogin/vim-markdown-toc'

" Pipenv
" Plug 'plytophogy/vim-virtualenv'
" Plug 'PieterjanMontens/vim-pipenv'

" readline mappings for insert mode
Plug 'tpope/vim-rsi'

" Autosaving
" Plug '907th/vim-auto-save'

call plug#end()

set encoding=UTF-8
