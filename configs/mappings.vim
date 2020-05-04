"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************

" Main Vim Keybinds

"***********************************************************************************


" escape to enter normal mode from term
tnoremap <Esc> <C-\><C-n>

" Set leader to space bar
let mapleader = " "
let maplocalleader = " "

" General
map <Leader>< :previous <enter>
map <Leader>> :next <enter>
map <Leader><tab> <C-w>w
nmap <Leader>w :w<CR>
nmap <Leader>rr :source ~/.config/nvim/init.vim<CR>
noremap <space>n :NERDTreeToggle <enter>
nmap <Leader>ss :mks!<CR>

" open fork for current repo
nmap <Leader>of :!fork open .<CR>


" Window Navigation
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
" nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
" nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
" nnoremap<silent> <Tab> :bnext<CR>
" nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
" nnoremap<silent> <Space>bk :bdelete<CR> 

"Faster ESC.
inoremap jk <ESC>
inoremap kj <ESC>

" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Text alignment
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" COC Keybinds
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf <Plug>(coc-format-selected)

nmap <Leader>bf :call CocAction('format')<CR>

" Using CocList
" Show all diagnostics
nnoremap  <Leader>cdi  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap  <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap  <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <Leader>co  :<C-u>CocList outline<cr>


" Magit
nmap <Leader>gs :Magit<CR>



" FZF 
nmap <Leader>p :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>g :Rg<CR>
nmap <Leader>m :Marks<CR>
nmap <Leader>fn :FZF ~/notes<CR>
" nmap <Leader>gn :

" search vimiwiki notes
" fix spelling error to top suggestion
nmap <Leader>z mz[s1z=e'z

" quick vertical split terminal
nmap <Leader>vv :vs\|:terminal<CR>

" open todo.txt file
nmap <Leader>ot :e ~/notes/todo.txt<CR>

nmap <Leader>fn :FZF ~/notes<CR>
" lazydocker and lazygit
nnoremap <silent> <Leader>ld :call ToggleLazyDocker()<CR>
nnoremap <silent> <Leader>lg :call ToggleLazyGit()<CR>
