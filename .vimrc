"Setup
set shell=bash
set nowrap
set number
set nocompatible
set noshowmode
set directory^=$HOME/.vim/.swapfiles
set undofile
set mouse=a
syntax on
colorscheme neodark
hi Normal ctermbg=none
sign define transparent_sign
augroup SignColFixAu
	au!
	au BufReadPost *.c,*.cc,*.h,*.cpp,*.hh,*.py,*.js,*.php,*.rs exe "sign place 1111 name=transparent_sign line=1 file=".@%
augroup end
nnoremap o ox<BS>
nnoremap O Ox<BS>
inoremap <esc> ~<bs><esc>
inoremap <expr> <up> pumvisible() ? "\<c-p>" : "~\<bs>\<up>"
inoremap <expr> <down> pumvisible() ? "\<c-p>" : "~\<bs>\<down>"
inoremap <Esc>x <Esc>x

"Commands
function! s:Copy(...)
	let a:arg1 = get(a:, 1, 0)
	let a:arg2 = get(a:, 2, 0)
	
	if(a:arg1 && a:arg2)
		let c = a:arg1 . "," . a:arg2 . "p "
		execute "!clear && sed -n" c "% | xclip -selection c"
	elseif(a:arg1)
		let c = "1," . a:arg1 . "p "
		execute "!clear && sed -n" c "% | xclip -selection c"
	else
		execute "!clear && cat % | xclip -selection c"
	endif
endfunction
command -nargs=* Copy call s:Copy(<f-args>)
command Python :w | !clear && python "%"
command Python2 :w | !clear && python2 "%"
command Sh :w | !clear && sh "%"
command Bash :w | !clear && bash "%"
command Cpp :w | !clear && output=$(echo "%" | sed 's/\.cpp$//g') && clang++ "%" -g -std=c++14 -Wall -o ${output} && ./${output}
command Rust :w | !clear && cargo run -q
command RustTest :w | !clear && cargo test

"Keybinding
execute "set <M-q>=\eq"
execute "set <M-n>=\en"
execute "set <M-m>=\em"
execute "set <M-,>=\e,"
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
execute "set <M-l>=\el"
execute "set <M-f>=\ef"
execute "set <M-t>=\et"
nnoremap <M-q> :qa <Enter>
nnoremap <M-n> :NERDTree <Enter>
nnoremap <M-m> :Tabularize /=<CR>
nnoremap <M-,> :Tabularize /=><CR>
nnoremap <M-j> :w <Enter>
nnoremap <M-k> :bp <Enter>
nnoremap <M-l> :bn <Enter>
autocmd FileType python nnoremap <M-f> :Python <Enter>
autocmd FileType sh nnoremap <M-f> :Sh <Enter>
autocmd FileType cpp nnoremap <M-f> :Cpp <Enter>
autocmd FileType rust nnoremap <M-f> :Rust <Enter>
autocmd FileType rust nnoremap <M-t> :RustTest <Enter>

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
Plugin 'easymotion/vim-easymotion'
Plugin 'w0rp/ale'
Plugin 'godlygeek/tabular'
Plugin 'raimondi/delimitmate'

call vundle#end()
filetype plugin indent on

"YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_global_ycm_extra_conf                     = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui                       = 0
let g:ycm_key_list_select_completion                = ['<tab>']
let g:ycm_key_list_previous_completion              = ['<s-tab>']

"Airline
let g:airline#extensions#whitespace#enabled = 0
let g:airline_section_z                     = '%3p%% %l:%c'
let g:airline_exclude_preview               = 1

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
let g:ale_linters                      = {'cpp': ['clang'], 'rust' : ['rls']}
let g:ale_echo_msg_error_str           = 'Error'
let g:ale_echo_msg_warning_str         = 'Warning'
let g:ale_echo_msg_format              = '%severity%: %s [%linter%]'
let g:ale_rust_cargo_check_all_targets = 0
let g:ale_rust_rls_toolchain           = 'stable-x86_64-unknown-linux-gnu'
hi clear ALEWarningSign

"DelimitMate
let g:delimitMate_autoclose = 1
let g:delimitMate_expand_cr = 1

