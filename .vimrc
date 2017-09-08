"Setup
set shell=bash
set nowrap
set number
set nocompatible
set noshowmode
set directory^=$HOME/.vim/.swapfiles
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
command Cpp :w | !clear && output=$(echo "%" | sed 's/\.cpp$//g') && g++ "%" -o ${output} && ./${output}

"Keybinding
execute "set <M-n>=\en"
execute "set <M-j>=\ej"
execute "set <M-f>=\ef"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
nnoremap <M-n> :NERDTree <Enter>
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
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'

call vundle#end()
filetype plugin indent on

"Syntastic
set statusline+=%*
set laststatus=2

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 3
let g:syntastic_cpp_checkers=['clang_check', 'gcc']

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

