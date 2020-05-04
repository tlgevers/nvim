"*****************************************************************************************
"   ___    __                _               ____       __   __    _                   
"  / _ \  / / __ __  ___ _  (_)  ___        / __/ ___  / /_ / /_  (_)  ___   ___ _  ___
" / ___/ / / / // / / _ `/ / /  / _ \      _\ \  / -_)/ __// __/ / /  / _ \ / _ `/ (_-<
"/_/    /_/  \_,_/  \_, / /_/  /_//_/     /___/  \__/ \__/ \__/ /_/  /_//_/ \_, / /___/
"                  /___/                                                   /___/       
"
"*****************************************************************************************

"""""""""""""""
" Git Gutter  "
"""""""""""""""
let g:gitgutter_enabled = 1
let g:gitgutter_grep=''


"""""""""""""""
" FZF "
"""""""""""""""
let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!*.{min.js,swp,o,zip}" 
  \ -g "!{.git,node_modules,vendor,.venv}/*" '


" Reverse the layout to make the FZF list top-down
" let $FZF_DEFAULT_OPTS='--layout=reverse'

" " Using the custom window creation function
" let g:fzf_layout = { 'window': 'call FloatingFZF()' }

" " Function to create the custom floating window
" function! FloatingFZF()
"   " creates a scratch, unlisted, new, empty, unnamed buffer
"   " to be used in the floating window
"   let buf = nvim_create_buf(v:false, v:true)

"   " 90% of the height
"   let height = float2nr(&lines * 0.5)
"   " 60% of the height
"   let width = float2nr(&columns * 0.4)
"   " horizontal position (centralized)
"   let horizontal = float2nr((&columns - width) / 3)
"   " vertical position (one line down of the top)
"   let vertical = 20

"   let opts = {
"         \ 'relative': 'editor',
"         \ 'row': vertical,
"         \ 'col': horizontal,
"         \ 'width': width,
"         \ 'height': height
"         \ }

"   " open the new window, floating, and enter to it
"   call nvim_open_win(buf, v:true, opts)
" endfunction

"""""""""""
" Goyo    "
"""""""""""
" nmap <F6> :Goyo<CR>
"


" Vim Wiki

" Dont set vimwiki filetype globally
let g:vimwiki_global_ext = 0

let g:vimwiki_list = [{'path': '~/notes/',
                       \ 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/joplin_export/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
" Taskwiki
let g:taskwiki_syntax = 'markdown'


"""""""""""
" Vista  "
"""""""""""
nmap <F8> :Vista!!<CR>
let g:vista_executive_for = {
      \ 'c': 'coc',
      \ }
nnoremap <silent><leader>vf :Vista finder coc<CR>
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1
let g:vista_sidebar_width = 50

""""""""""""
"NerdTree  "
""""""""""""
" if nerdtree is only window, kill nerdtree so buffer can die
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | :bdelete | endif
map <M-0> :NERDTreeToggle<CR>
let nerdtreequitonopen = 0
let NERDTreeShowHidden=1
let nerdchristmastree=1
let g:NERDTreeMinimalUI = 1
let g:nerdtreewinsize = 25
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }


""""""""""""
"Airline   "
""""""""""""
"main settings
let g:airline_theme='gruvbox'
let g:airline_powerline_fonts = 0
" let g:airline_symbols = {}
" let g:airline_skip_empty_sections = 1
" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''
" let g:airline_symbols_branch = ''
" let g:airline_powerline_fonts = 1
" let g:airline_symbols.crypt = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.linenr = '␊'
" let g:airline_symbols.linenr = '␤'
" let g:airline_symbols.linenr = '¶'
" let g:airline_symbols.maxlinenr = ''
" let g:airline_symbols.paste = 'ρ'
" let g:airline_symbols.paste = 'Þ'
" let g:airline_symbols.paste = '∥'
" let g:airline_symbols.spell = 'Ꞩ'
" let g:airline_symbols.notexists = 'Ɇ'
" let g:airline_symbols.whitespace = 'Ξ'
" let g:airline_symbols.modified = ' '
" let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
" let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'
"extensions
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#ale#enabled = 1
" let g:airline#extensions#coc#enabled = 1
" let g:airline#extensions#unicode#enabled = 1
" let g:airline#extensions#branch#enabled = 1
" let g:airline#extensions#vista#enabled = 1
" let g:airline#extensions#hunks#enabled = 1
"extension settings
" let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
" let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
" let airline#extensions#coc#warning_symbol = ':'
" let airline#extensions#coc#error_symbol = ':'
" let g:airline#extensions#hunks#hunk_symbols = [':', ':', ':']
" let g:airline#extensions#branch#format = 2


"""""""""""""
"Devicons   "
"""""""""""""
let g:webdevicons_enable = 1
" let g:webdevicons_enable_unite = 1
" let g:webdevicons_enable_denite = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_enable_airline_statusline = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
" let g:DevIconsDefaultFolderOpenSymbol = ''

"""""""""""""""""
"Comfy-Scroll   "
"""""""""""""""""
" noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
" noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
" let g:comfortable_motion_friction = 50.0
" let g:comfortable_motion_air_drag = 1.0

""""""""""
" Emoji  "
""""""""""
" set completefunc=emoji#complete


"""""""""""""""""
"Indent Guides  "
"""""""""""""""""
"let g:indentLine_char = '▏'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indent_guides_auto_colors = 1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]

"""""""""""""
"Autopairs  "
"""""""""""""
" let g:AutoPairsFlyMode = 1


"""""""""""""
" Rainbow Brackets
"""""""""""""
let g:rainbow_active = 1


"""""""""""""
"Ultinsips  "
"""""""""""""
" These were interfering with coc.nvims completion keybinds
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsListSnippets="<c-tab>"

""""""""""""
"Startify  "
""""""""""""
" function! s:center(lines) abort
"   let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
"   let centered_lines = map(copy(a:lines),
"         \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
"   return centered_lines
" endfunction
" let s:header= [
"       \"▄▀▀▄ ▄▀▀▄  ▄▀▀█▀▄    ▄▀▀▄ ▄▀▄      ▄▀▀▄▀▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀█▄   ▄▀▀▄▀▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▄▀▀▀▄ ",
"       \"█   █    █ █   █  █  █  █ ▀  █     █   █   █ ▐  ▄▀   ▐ ▐ ▄▀ ▀▄ █   █   █ ▐  ▄▀   ▐ █   █   █ ",
"       \"▐  █    █  ▐   █  ▐  ▐  █    █     ▐  █▀▀█▀    █▄▄▄▄▄    █▄▄▄█ ▐  █▀▀▀▀    █▄▄▄▄▄  ▐  █▀▀█▀  ",
"       \"  █   ▄▀      █       █    █       ▄▀    █    █    ▌   ▄▀   █    █        █    ▌   ▄▀    █  ",
"       \"   ▀▄▀     ▄▀▀▀▀▀▄  ▄▀   ▄▀       █     █    ▄▀▄▄▄▄   █   ▄▀   ▄▀        ▄▀▄▄▄▄   █     █   ",
"       \"          █       █ █    █        ▐     ▐    █    ▐   ▐   ▐   █          █    ▐   ▐     ▐   ",
"       \"          ▐       ▐ ▐    ▐                   ▐                ▐          ▐                  ",
"       \"",
"       \"",
"       \"                                          ;::::;",
"       \"                                        ;::::; :;",
"       \"                                      ;:::::'   :;",
"       \"                                     ;:::::;     ;.",
"       \"                                    ,:::::'       ;           OOO\ ",
"       \"                                    ::::::;       ;          OOOOO\ ",
"       \"                                    ;:::::;       ;         OOOOOOOO",
"       \"                                   ,;::::::;     ;'         / OOOOOOO",
"       \"                                 ;:::::::::`. ,,,;.        /  / DOOOOOO",
"       \"                               .';:::::::::::::::::;,     /  /     DOOOO",
"       \"                              ,::::::;::::::;;;;::::;,   /  /        DOOO",
"       \"                             ;`::::::`'::::::;;;::::: ,#/  /          DOOO",
"       \"                             :`:::::::`;::::::;;::: ;::#  /            DOOO",
"       \"                             ::`:::::::`;:::::::: ;::::# /              DOO",
"       \"                             `:`:::::::`;:::::: ;::::::#/               DOO",
"       \"                              :::`:::::::`;; ;:::::::::##                OO",
"       \"                              ::::`:::::::`;::::::::;:::#                OO",
"       \"                              `:::::`::::::::::::;'`:;::#                O",
"       \"                               `:::::`::::::::;' /  / `:#",
"       \"                                ::::::`:::::;'  /  /   `#",
"       \]

" let g:startify_change_to_dir = 1
" let g:startify_custom_header = s:center(s:header)
" Optionally create and use footer
"let s:header= []
"let g:startify_custom_footer = s:center(s:footer)

"""""""
"COC  "
"""""""

" Define Error Symbols and colors
let g:coc_status_warning_sign = ''
let g:coc_status_error_sign = ''
hi CocWarningSign ctermfg=blue 
hi CocErrorSign ctermfg=red
hi CocInfoSign ctermfg=yellow
hi CocHintSign ctermfg=green

" Transparent popup window
hi! Pmenu ctermbg=black
hi! PmenuSel ctermfg=2
hi! PmenuSel ctermbg=0

" Brighter line numbers
hi! LineNr ctermfg=NONE guibg=NONE

" KEY REMAPS ""
set updatetime=300
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Extensions. Some need configuration. 
" coc-java needs a valid JVM filepath defined in coc-settings
" coc-ccls needs ccls (available on aur)
" coc-eslint needs eslint npm package installed globally
let g:coc_global_extensions = [
      \'coc-html', 
      \'coc-xml', 
      \'coc-vimlsp', 
      \'coc-sql', 
      \'coc-go', 
      \'coc-css', 
      \'coc-sh', 
      \'coc-snippets',
      \'coc-prettier',
      \'coc-eslint',
      \'coc-emmet',
      \'coc-tsserver',
      \'coc-docker',
      \'coc-pairs',
      \'coc-json',
      \'coc-python',
      \'coc-highlight',
      \'coc-git',
      \'coc-gitignore',
      \'coc-emoji',
      \'coc-lists',
      \'coc-stylelint',
      \'coc-yaml',
      \'coc-template',
      \'coc-utils'
      \]

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for format selected region
" nmap <leader>f  <Plug>(coc-format-selected)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" augroup MyAutoCmd
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" map <tab> to trigger completion and navigate to the next item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" include .venv folders to detemrine workspaces
" (useful for multiple python interpreters in a single workspace (project))
autocmd FileType python let b:coc_root_patterns = ['.venv', '.vim', '.git']
""""""""""
"Markdown"
""""""""""
let g:mkdp_auto_close = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" dont conceal text in markdown
set conceallevel=1 

"""""""""""""""""
" Autosaving    "
"""""""""""""""""
" let g:auto_save        = 1
" let g:auto_save_silent = 1
" let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]
