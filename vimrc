" A minimal vimrc for new vim users to start with.
"
" Referenced here:
"     http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	 Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Last change:	         2012 Jan 20
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.


" #############################################################################
"                       BEGIN vundle related configuration                          
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'     " git
Plugin 'scrooloose/syntastic'
" Plugin 'davidhalter/jedi-vim'
" Plugin 'Valloric/YouCompleteMe' 	" could not get it to work :(
Plugin 'scrooloose/nerdtree'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
Plugin 'ekalinin/Dockerfile.vim'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                       END vundle related configuration                          
" #############################################################################


" sytastic settings
let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--max-line-length=120"

" pymode settings
let g:pymode_folding = 0

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" colors
" syntax enable
" set background=dark
colorscheme solarized

set hlsearch
set ruler
set number
set colorcolumn=100

let NERDTreeShowHidden=1
let NERDTreeIgnore=[ '\.pyc$', '\.swp']

" python indentation
"au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

" workaround to recognize *.md files as markdown files instead of modula2
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let g:sls_use_jinja_syntax = 1

let g:pymode_options_colorcolumn = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>z'
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'
let g:pymode_options_max_line_length = 99
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'new'
