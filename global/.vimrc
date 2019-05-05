set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'vim-syntastic/syntastic'
Plugin 'janko-m/vim-test'
Plugin 'fatih/vim-go'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'PProvost/vim-ps1'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'plytophogy/vim-virtualenv'
Plugin 'tpope/vim-eunuch'

Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

call glaive#Install()
Glaive codefmt plugin[mappings]

set shell=/bin/bash
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set exrc
set secure
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0
let g:syntastic_python_checkers=['flake8']

filetype plugin indent on
syntax on

nmap <silent> <C-J> :FormatCode<CR>
nmap <silent> <C-N> :NERDTreeToggle<CR>
nmap <silent> <C-P> :TagbarToggle<CR>
nmap <silent> <C-K> :IndentGuidesToggle<CR> 
nmap <silent> <C-@> :SyntasticToggleMode<CR>
noremap  <leader>g :YcmCompleter GoTo<CR>
noremap  <leader>t :YcmCompleter GoToType<CR>
noremap  <leader>r :YcmCompleter GoToReferences<CR>
nnoremap <leader>d "_d
vnoremap <leader>d "_d
vnoremap <leader>f "_dP
noremap  <leader>y "+y
noremap  <leader>p "+p

colorscheme gruvbox
set background=dark

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#tabline#enabled=1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_theme='gruvbox'

set colorcolumn=120

function UseTabs()
    setlocal noexpandtab
    setlocal tabstop=4
    setlocal shiftwidth=4
endfunction
command! -bar UseTabs call UseTabs()

function UseSpaces()
    setlocal expandtab
    setlocal tabstop=8
    setlocal shiftwidth=4
endfunction
command! -bar UseSpaces call UseSpaces()

function CheckPy2()
    let g:syntastic_python_flake8_exec = 'python2'
    let g:syntastic_python_flake8_args = ['-m', 'flake8', '--max-line-length=120']
endfunction
command! -bar CheckPy2 call CheckPy2()

function CheckPy3()
    let g:syntastic_python_flake8_exec = 'python3'
    let g:syntastic_python_flake8_args = ['-m', 'flake8', '--max-line-length=120']
endfunction
command! -bar CheckPy3 call CheckPy3()

call CheckPy3()
