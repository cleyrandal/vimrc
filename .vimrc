set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'pseewald/vim-anyfold'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'

"COLORS
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" cleyrandal
set nu hls incsearch nowrap scrolloff=10
map - $
    " minus key go to end of the line as `$`

" PEP 8
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
"    \ set foldmethod=indent

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" UTF-8 Support
set encoding=utf-8

" Syntax Checking/Highlighting
let python_highlight_all=1
syntax on

" CONFIG PLUGINS: [

"" 'jnurmine/Zenburn'
"colorscheme zenburn

"" 'tomasr/molokai'
let g:molokai_original = 1
colorscheme molokai

"" 'pseewald/vim-anyfold'
"syntax on "required to vim-anyfold
autocmd Filetype * AnyFoldActivate    " activate for all filetypes
"set foldlevel=0  " close all folds
set foldlevel=99 " Open all folds
    " Use Vim's fold commands zo, zO, zc, za, ... to fold / unfold folds (read :h fold-commands for more information).
    " Use key combinations [[ and ]] to navigate to the beginning and end of the current open fold. Use ]k and [j
    " to navigate to the end of the previous block and to the beginning of the next block.

"" 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1  " indent guides enabled by default
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

nnoremap <space> za
    " Enable folding with the spacebar

"" 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
    " The auto-complete window goes away when you’re done with it.
map <C-G>  :YcmCompleter GoToDefinitionElseDeclaration<CR>
    " Defines a shortcut for goto definition.

"" 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " type `l` and match `l`&`L`
let g:EasyMotion_use_smartsign_us = 1 " Smartsign (type `3` and match `3`&`#`)

nmap s <Plug>(easymotion-s)
    " `s<CR>` repeat last find motion.

" CONFIG PLUGINS: ]



"" ERROS: [

" Flagging Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"" ERROS: ]


