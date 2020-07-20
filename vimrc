" Vim-plug Section ------------------------------------------------------
" vim-plug on -----------------------------------------------------------
call plug#begin()

" Make sure you use single quotes
" Any valid git URL is allowed
" Git urls -------------------------------------------------------------

" editor functions
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
" Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/vim-scripts/DeleteTrailingWhitespace.git'
Plug 'https://github.com/vim-scripts/ShowTrailingWhitespace.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
" Plug 'https://github.com/majutsushi/tagbar.git'
Plug 'https://github.com/sjl/gundo.vim.git'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'ryanoasis/vim-devicons'
Plug 'liuchengxu/vista.vim'

" editor apperence
Plug 'https://github.com/bling/vim-airline.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'dracula/vim'

" programming language
"" Global
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'

"" Python
Plug 'Vimjas/vim-python-pep8-indent'

"" C/C++
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'

"" Markdown
Plug 'plasticboy/vim-markdown'

"" Web
Plug 'https://github.com/jiangmiao/auto-pairs.git'


" Finished -------------------------------------------------------------
call plug#end()

" Setting Section ------------------------------------------------------
" Syntax Highlight -----------------------------------------------------
if (has("termguicolors"))
    set termguicolors
endif
syntax on

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
set guifont=CaskaydiaCove\ NF:h12
colorscheme dracula  " Setting your favorate color scheme such as desert
filetype plugin indent on


" TAB Settings ---------------------------------------------------------
autocmd FileType python,vim,markdown setlocal expandtab softtabstop=4
autocmd FileType javascript,html,css setlocal expandtab softtabstop=2
set smarttab
"set expandtab
set tabstop=4
"set softtabstop=4
set shiftwidth=4
"set guifont=Cascadia\ Code\ PL:h12


" Vim-airline Settings -------------------------------------------------
let g:airline_powerline_fonts=1
let g:airline_theme="bubblegum"
set laststatus=2
let g:airline#extensions#ale#enabled = 1

"You need install powerline fonts to turn on this option

" If you like airline tabline, you can use following option
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#buffer_nr_show = 1
"let g:airline#extensions#tabline#buffer_nr_format = '%s:'


" NERDTree Settings ----------------------------------------------------
nmap <leader>nt :NERDTreeToggle<cr>
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


" Tagbar Settings ------------------------------------------------------
"Change and turn on the following option in Windows and MacOS
nmap <leader>tb :Vista<cr>


" Gundo Settings -------------------------------------------------------
nmap <leader>gt :GundoToggle<cr>
" If you only have python3 and python3/dyn vim, turn on this option.
let g:gundo_prefer_python3=1


" Enable deoplete completion at startup
"let g:deoplete#enable_at_startup = 1


" SuperTab Settings -----------------------------------------------------
" let g:SuperTabDefaultCompletionType = "<c-n>"


" DeleteTrailingWhiteSpace
let g:DeleteTrailingWhitespace = 1
let g:DeleteTrailingWhitespace_Action = 'delete'


" Vista
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista#renderer#enable_icon = 1


" ale
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fixers = {
    \    'python': ['yapf'],
    \}
let g:ale_fix_on_save = 1
