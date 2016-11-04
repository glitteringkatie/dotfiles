if has('vim_starting')
	if &compatible
		set nocompatible			   " Be iMproved
	endif

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'mxw/vim-jsx'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'Yggdroot/indentLine'
NeoBundle 'lunaru/vim-less'
"NeoBundle 'bling/vim-airline'
"NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'lambdatoast/elm.vim'
NeoBundle 'hugheskatie/vim-espresso'
"NeoBundle 'itchyny/lightline.vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
set t_Co=256
set background=dark
colorscheme espresso
syntax on
set number
let g:ctrlp_map = '<c-p>'
let mapleader = ','
set smartcase
set hlsearch
set showmatch
set ignorecase
set wildignore+=node_modules
set showcmd

" whitespace
set listchars=tab:»\ ,eol:¬
set list
let g:indentLine_char = '·'
let g:indentLine_enabled = 1

" tabs/indents
set tabstop=2
set shiftwidth=2
function ToggleTab()
	if &expandtab
		set noexpandtab
	else
		set expandtab
	endif
endfunction
:command -range TabToSpace <line1>,<line2>s/\t/  /g
:command -range SpaceToTab <line1>,<line2>s/  /\t/g

" maps
map <C-n> :NERDTreeToggle<CR>
nmap ; :CtrlPBuffer<CR>
nmap <C-t> mz:execute ToggleTab()<CR>'z

""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
"let g:airline_enable_branch = 1
"let g:airline_powerline_fonts = 1
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline_theme = 'espresso'
"let g:airline_enable_hunks = 1

set laststatus=2
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#hunks#enabled = 1
"let g:gitgutter_sign_column_always = 1

" let g:syntastic_auto_loc_list=1
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_javascript_jshint_args = '--config ~/.jshintrc'
highlight ColorColumn ctermbg=0*
set colorcolumn=80
set clipboard=unnamedplus
