" Plugins will be downloaded from under list
call plug#begin('~/.vim/plugged')

" Environment
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'tclem/vim-arduino'
Plug 'vim-scripts/c.vim'
Plug 'valloric/youcompleteme'
" Environment End

" Accessibility
" for fzf
" get more informations checkout https://github.com/junegunn/fzf#installation
Plug '~/.fzf'

" HTML5 auto tag
Plug 'mattn/emmet-vim'

" Syntax highlight
Plug 'sheerun/vim-polyglot'

" Wrong syntax check
Plug 'scrooloose/syntastic'

" More easyer comment
Plug 'scrooloose/nerdcommenter'

" Snipmate
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
" End snipmate

" Git
" Git plugin for vim
Plug 'tpope/vim-fugitive'

" Git plugin for file system
Plug 'Xuyuanp/nerdtree-git-plugin'
" End Git

" Interface
" Show change status before commit
Plug 'airblade/vim-gitgutter'

" Customized status bar
Plug 'bling/vim-airline'

" Download colorscheme
Plug 'flazz/vim-colorschemes'
Plug 'nightsense/snow'

" Vimwiki
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }

" Plugins list end
call plug#end()

" Settings for personalized VIM
set tabstop=8
set softtabstop=4
set shiftwidth=4
set expandtab
set showcmd
set hlsearch
set autoindent
set cindent
set nu " Show list number
set autoread " Read file when edited file other editer
set showcmd
set incsearch

" Syntax highlighting
if has("syntax")
    syntax on
endif

" Autoindent

" Show list number

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

" Vimwiki Settings
"
" Local leader key
let maplocalleader = "\\"

" Public / Private wiki
let g:vimwiki_list = [
    \{
    \   'path': '~/Repository/riemannulus.github.io/_wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
    \{
    \   'path': '~/Dropbox/wiki',
    \   'ext' : '.md',
    \   'diary_rel_path': '.',
    \},
\]

" Disable conceallevel
let g:vimwiki_conceallevel = 0

" Vimwiki settings end

" Notify cursor position in status line
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

" Colorscheme
set background=dark
colorscheme snow 
set termguicolors

" Transparency for show background
hi Normal ctermbg=none

" Change font to powerline in airline
let g:airline_powerline_fonts = 1

" Filetype indent behavior
autocmd Filetype html setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 sts=2 expandtab
" Filetype indent behavior end

" Using custom highlight. downloaded by
" Arduino: https://www.vim.org/scripts/script.php?script_id=2654
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino
" End Using custom highlight

" filesave at root by forced
cnoremap w!! %!sudo -A tee > /dev/null %

" for only neovim
set clipboard+=unnamedplus

" for c.vim
let g:C_UseTool_cmake = 'yes'
let g:C_UseTool_doxygen = 'yes'

" for youcompleteme
" get more informations (installtion) checkout https://github.com/Valloric/YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0


" nnormap start
" tab navigation shortcut
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
"nnoremap tn :tabnew<CR>

