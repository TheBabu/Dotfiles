"Setup
set shell=bash
set nowrap
set number
set nocompatible
set noshowmode
set directory^=$HOME/.vim/.swapfiles
set mouse=a
syntax on
colorscheme neodark
hi Normal ctermbg=none
sign define transparent_sign
augroup SignColFixAu
	au!
	au BufReadPost *.c,*.cc,*.h,*.cpp,*.hh,*.py,*.js,*.php exe "sign place 1111 name=transparent_sign line=1 file=".@%
augroup end
inoremap <CR> <CR>x<BS>
nnoremap o ox<BS>
nnoremap O Ox<BS>
inoremap <esc> ~<bs><esc>
inoremap <cr> ~<bs><cr>
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "~\<bs>\<up>"
inoremap <expr> <down> pumvisible() ? "\<c-p>" : "~\<bs>\<down>"
inoremap <Esc>x <Esc>x

"Commands
command Copy :w | !clear && cat "%" | xclip -selection c
command Python :w | !clear && python "%"
command Python2 :w | !clear && python2 "%"
command Sh :w | !clear && sh "%"
command Bash :w | !clear && bash "%"
command Cpp :w | !clear && output=$(echo "%" | sed 's/\.cpp$//g') && clang++ "%" -g -std=c++14 -Wall -o ${output} && ./${output}

"Keybinding
execute "set <M-q>=\eq"
execute "set <M-n>=\en"
execute "set <M-m>=\em"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
execute "set <M-d>=\ed"
execute "set <M-f>=\ef"
nnoremap <M-q> :x <Enter>
nnoremap <M-n> :NERDTree <Enter>
nnoremap <M-m> :Tabularize /=<CR>
nnoremap <M-j> :w <Enter>
nnoremap <M-k> :bp <Enter>
nnoremap <M-l> :bn <Enter>
autocmd FileType python nnoremap <M-f> :Python <Enter>
autocmd FileType sh nnoremap <M-f> :Sh <Enter>
autocmd FileType cpp nnoremap <M-f> :Cpp <Enter>

"Tabs
set listchars=tab:➡\ 
set list
set autoindent
set noexpandtab
set tabstop=4
set shiftwidth=4
autocmd FileType python setlocal autoindent noexpandtab tabstop=4 shiftwidth=4

"Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'easymotion/vim-easymotion'
Plugin 'w0rp/ale'
Plugin 'godlygeek/tabular'

call vundle#end()
filetype plugin indent on

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
let g:ycm_key_list_select_completion = ['<tab>']
let g:ycm_key_list_previous_completion = ['<s-tab>']

"Airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z = '%3p%% %l:%c'
let g:airline_exclude_preview = 1

"EasyMotion
let g:EasyMotion_smartcase = 1
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen
hi link EasyMotionMoveHL Search
hi link EasyMotionIncSearch Search

"Ale
let g:ale_linters = {'cpp': ['clang']}
let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '%severity%: %s [%linter%]'
hi clear ALEWarningSign

