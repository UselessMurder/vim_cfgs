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
Plugin 'tell-k/vim-autopep8'

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

Plugin 'PProvost/vim-ps1'
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

Plugin 'plytophogy/vim-virtualenv'

Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline-themes'

call vundle#end()

call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"

set shell=/bin/bash
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set exrc
set secure
set number
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

let g:autopep8_max_line_length=120
let g:autopep8_aggressive=2

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
let g:airline_theme='jellybeans'

filetype plugin indent on
syntax on
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
noremap <leader>g :YcmCompleter GoTo<CR>
noremap <leader>t :YcmCompleter GoToType<CR>
noremap <leader>r :YcmCompleter GoToReferences<CR> 

colorscheme jellybeans
