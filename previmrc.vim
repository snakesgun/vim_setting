" Vim-plug Section ------------------------------------------------------
" vim-plug on -----------------------------------------------------------
call plug#begin()

" Make sure you use single quotes
" Any valid git URL is allowed
" Git urls -------------------------------------------------------------

" editor functions
Plug 'https://github.com/scrooloose/nerdcommenter.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/godlygeek/tabular.git'
Plug 'https://github.com/vim-scripts/DeleteTrailingWhitespace.git'
Plug 'https://github.com/vim-scripts/ShowTrailingWhitespace.git'
Plug 'https://github.com/Yggdroot/indentLine.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'mbbill/undotree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'liuchengxu/vista.vim'
Plug 'luochen1990/rainbow'
Plug 'skywind3000/asyncrun.vim'
Plug 'mhinz/vim-startify'
Plug 'easymotion/vim-easymotion'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets', {'branch': 'main'}

" editor apperence
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'markvincze/panda-vim'
Plug 'sainnhe/edge'
Plug 'snakesgun/auto-dark-mode.vim'

" programming language
"" Global
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'mattn/vim-lsp-settings'

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
