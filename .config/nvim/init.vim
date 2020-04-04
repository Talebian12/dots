"
" Neovim config file by talebian
"

" plugins
call plug#begin('~/vim/plugged')

" lightline bar
Plug 'itchyny/lightline.vim'
" deoplete autocompletion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" clang deoplete addon
Plug 'zchee/deoplete-clang'
" nerd tree
Plug 'scrooloose/nerdtree'
" acpi lang syntax
Plug 'westeri/asl-vim'
" Rust for nvim
Plug 'racer-rust/vim-racer'
" Rust syntax
Plug 'rust-lang/rust.vim'
call plug#end()

" truecolor
set termguicolors

" colorscheme
colorscheme taleflat
syntax on

" linenumber
"set number
set numberwidth=4

highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang/9.0.1/lib/'
let g:deoplete#sources#rust#racer_binary = '/home/talebian/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path = '/home/talebian/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

" racer config
set hidden
let g:racer_cmd = "/home/talebian/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:racer_insert_paren = 1

" hide default bar
set noshowmode

" setup lightline bar
let g:lightline = {
      \ 'colorscheme': 'ayu_mirage',
      \}

" tmux settings
if exists('$TMUX')
	let &t_SI = "\<Esc>Ptmux;\<Esc>\e[6 q\<Esc>\\"
	let &t_SR = "\<Esc>Ptmux;\<Esc>\e[4 q\<Esc>\\"
	let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
else
	let &t_SI = "\e[6 q"
	let &t_SR = "\e[4 q"
	let &t_EI = "\e[2 q"
endif
