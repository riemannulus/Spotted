" Plugins will be downloaded from under list
call plug#begin('~/.vim/plugged')

" Language
Plug 'klen/python-mode'

" Accessibility
" File system explorer
Plug 'scrooloose/nerdtree'

" Wrong syntax check
Plug 'scrooloose/syntastic'

" More easyer comment
Plug 'scrooloose/nerdcommenter'

" Autocomplete
Plug 'valloric/youcompleteme'

" Git
" Git plugin for vim
Plug 'tpope/vim-fugitive'

" Git plugin for file system
Plug 'Xuyuanp/nerdtree-git-plugin'

" Interface
" Show change status before commit
Plug 'airblade/vim-gitgutter'

" Customized status bar
Plug 'bling/vim-airline'

" Download colorscheme
Plug 'nightsense/stellarized'

" Plugins list end
call plug#end()

" Settings for personalized VIM

" Make tab to space 4
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Syntax highlighting
if has("syntax")
    syntax on
endif

" Autoindent
set autoindent
set cindent

" Show list number
set nu

" Show matching bracket
set showmatch

" Cursor position to last workstatus
au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "norm g`\"" |
            \ endif

" NERD Commentor config start
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" NERD Commentor config end


" Notify cursor position in status line
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Colorscheme
colorscheme stellarized_dark

" Transparency for show background
hi Normal ctermbg=none

" Change font to powerline in airline
let g:airline_powerline_fonts = 1
