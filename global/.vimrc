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

Plugin 'nanotech/jellybeans.vim'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'

call vundle#end()

call glaive#Install()
Glaive codefmt plugin[mappings]
Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"

set shell=/bin/bash
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
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

filetype plugin indent on
syntax on

nmap <C-n> :NERDTreeToggle<CR>
nmap <C-p> :TagbarToggle<CR>
nmap <C-k> :IndentGuidesToggle<CR> 
noremap <leader>g :YcmCompleter GoTo<CR>
noremap <leader>t :YcmCompleter GoToType<CR>
noremap <leader>r :YcmCompleter GoToReferences<CR> 

colorscheme jellybeans

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

let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
let &colorcolumn="80,".join(range(120,999),",")

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
