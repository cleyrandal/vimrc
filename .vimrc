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
Plugin 'tomasr/molokai'

Plugin 'pseewald/vim-anyfold'
Plugin 'cohama/lexima.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'plytophogy/vim-virtualenv'
Plugin 'glench/vim-jinja2-syntax'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'

Plugin 'ervandew/supertab'
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'

Plugin 'vimwiki/vimwiki'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}

" requirements: sudo apt install powerline python3-powerline
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" cleyrandal
set nu 
    \ hls 
    \ incsearch 
    \ nowrap 
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
"   \ textwidth=79
    \ autoindent
    \ fileformat=unix
	\ cursorline
	\ cursorcolumn

map - $
    " minus key go to end of the line as `$`
"nmap o o<Esc>k
	" 'o' key on normal mode add a line above the current line without go to
	" insert mode.
		" I didn't adapt

set listchars+=space:.
set listchars+=tab:^_

" PEP 8
au FileType python setlocal
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
"   \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix
"    \ foldmethod=indent

au FileType html,css setlocal
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2

" UTF-8 Support
set encoding=UTF-8

" Syntax Checking/Highlighting
let python_highlight_all=1
syntax on

" CONFIG PLUGINS: {

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
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'


"" 'easymotion/vim-easymotion'
let g:EasyMotion_do_mapping = 0 " Disable default mappings
let g:EasyMotion_smartcase = 1 " type `l` and match `l`&`L`
let g:EasyMotion_use_smartsign_us = 1 " Smartsign (type `3` and match `3`&`#`)
nmap s <Plug>(easymotion-s)
    " `s<CR>` repeat last find motion.


"" 'vim-airline/vim-airline'
let g:airline_powerline_fonts = 1

"" 'scrooloose/nerdtree'
map <F3> :NERDTreeToggle<CR>

"" 'sirver/ultisnips'
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"" 'vimwiki/vimwiki'
" https://github.com/vimwiki/vimwiki
set nocompatible
filetype plugin on
syntax on
" vimwiki with markdown support
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" helppage -> :h vimwiki-syntax

"" 'suan/vim-instant-markdown' - Instant Markdown previews fom Vim
" https://github.com/suan/vim-instant-markdown
let g:instant_markdown_autostart = 0
map <leader>md :InstantMarkdownPreview<CR>
"let g:instant_markdown_browser = "firefox --new-window"



" CONFIG PLUGINS: }



"" ERROS: [

" Flagging Unnecessary Whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"" ERROS: ]


