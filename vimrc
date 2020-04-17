" Vim-plug Section ------------------------------------------------------
" vim-plug on -----------------------------------------------------------
call plug#begin()

" Make sure you use single quotes
" Any valid git URL is allowed
" Git urls -------------------------------------------------------------
Plug 'https://github.com/yonchu/accelerated-smooth-scroll.git'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/sjl/gundo.vim.git'
" Plug 'https://github.com/davidhalter/jedi-vim.git'
" Plug 'Shougo/deoplete.nvim'
" Plug 'roxma/nvim-yarp'
" Plug 'roxma/vim-hug-neovim-rpc'
" Plug 'zchee/deoplete-jedi'
Plug 'roxma/nvim-completion-manager'
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/flazz/vim-colorschemes.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
Plug 'https://github.com/vim-scripts/DeleteTrailingWhitespace.git'
Plug 'https://github.com/vim-scripts/ShowTrailingWhitespace.git'
Plug 'https://github.com/moll/vim-node.git'
Plug 'https://github.com/jelera/vim-javascript-syntax.git'
Plug 'https://github.com/vim-scripts/closetag.vim.git'
Plug 'plasticboy/vim-markdown'


" Finished -------------------------------------------------------------
call plug#end()

" Setting Section ------------------------------------------------------
" Syntax Highlight -----------------------------------------------------
syntax on
"let python_highlight_all=1  " If you need more colorful python highlight

" Basic Environment ----------------------------------------------------
set ru
set nocp
set is
set nu
set encoding=utf-8
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,]
set cursorline
set nobackup
set autochdir
colorscheme molokai  " Setting your favorate color scheme such as desert
filetype plugin indent on

" TAB Settings ---------------------------------------------------------
autocmd FileType python,vim,markdown setlocal expandtab softtabstop=4
autocmd FileType javascript,html,css setlocal expandtab softtabstop=2
set smarttab
"set expandtab
set tabstop=4
"set softtabstop=4
set shiftwidth=4

" Gui and Terminal -----------------------------------------------------
if has("gui")
    set guifont=Monaco\ for\ Powerline:h13
    set guioptions=m
    let g:airline_powerline_fonts=1
    let g:airline_theme="powerlineish"
    let g:jedi#force_py_version = 3
else
    let g:indent_guides_auto_colors=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermbg=gray
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=blue
    let g:airline_theme="bubblegum"
endif

" Vim-airline Settings -------------------------------------------------
set laststatus=2

"You need install powerline fonts to turn on this option

" If you like airline tabline, you can use following option
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_nr_format = '%s:'

" Highlight Current Columns by vimer.cn. -------------------------------
" Press ,ch to highlight current column
map ,ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction

" Add python header comment
"function HeaderPython()
    "call setline(1, "#!/usr/bin/env python")
    "call append(1, "# -*- coding: utf-8 -*-")
    "normal G
    "normal o
"endf
"autocmd bufnewfile *.py call HeaderPython()

" Indent Guides settings -----------------------------------------------
let g:indent_guides_guide_size=1
let g:indent_guides_enable_on_vim_startup=1


" NERDTree Settings ----------------------------------------------------
nmap <leader>nt :NERDTreeToggle<cr>

" Tagbar Settings ------------------------------------------------------
"Change and turn on the following option in Windows and MacOS
"let g:tagbar_ctags_bin="/Users/snakesgun/.vim/bundle/tagbar/ctags"
nmap <leader>tb :TagbarToggle<cr>

" Gundo Settings -------------------------------------------------------
nmap <leader>gt :GundoToggle<cr>
" If you only have python3 and python3/dyn vim, turn on this option.
"let g:gundo_prefer_python3=1

" Vim-Jedi Settings -----------------------------------------------------
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview

" Enable deoplete completion at startup
let g:deoplete#enable_at_startup = 1

" SuperTab Settings -----------------------------------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"

" Bufferline Settings ---------------------------------------------------
"let g:bufferline_echo = 0

" DeleteTrailingWhiteSpace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'
