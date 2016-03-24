" #############################################################################
"                       BEGIN vundle related configuration                          
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'saltstack/salt-vim'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
Plugin 'docker/docker' , {'rtp': '/contrib/syntax/vim/'}
Plugin 'pangloss/vim-javascript'
Plugin 'kylef/apiblueprint.vim'
Plugin 'sukima/xmledit'

call vundle#end()

filetype plugin indent on
" ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"                       END vundle related configuration                          
" #############################################################################

let g:syntastic_python_checkers = ["flake8"]
let g:syntastic_python_flake8_args = "--max-line-length=120"

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

syntax on

syntax enable
set background=dark
call togglebg#map("<F5>")
colorscheme solarized

let g:solarized_termcolors=16

set hlsearch
set ruler
set number
set colorcolumn=80

let NERDTreeShowHidden=1
let NERDTreeIgnore=[ '\.pyc$', '\.swp']

" workaround to recognize *.md files as markdown files instead of modula2
autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let g:sls_use_jinja_syntax = 1

let g:pymode_options_colorcolumn = 1
let g:pymode_folding = 1
let g:pymode_motion = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>z'
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()'
let g:pymode_options_max_line_length = 79
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_goto_definition_bind = '<C-c>g'
let g:pymode_rope_goto_definition_cmd = 'new'

autocmd Filetype htmldjango setlocal ts=2 sts=2 sw=2 expandtab

map <F2> :NERDTreeToggle<CR>
