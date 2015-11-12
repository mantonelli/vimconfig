" Enable Pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()

filetype on

syntax enable
set background=light
colorscheme solarized

" Always show the statusline
set laststatus=2

" Syntax highligth
if has("syntax")
	syntax on
endif

" Indentation
if has("autocmd")
	filetype plugin indent on
endif

" Mostra o número das linhas
set number
nnoremap :set nonumber!: set foldcolumn=0

set foldmethod=indent
set foldlevel=99

" Map keys to navigate between window splits

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Plugin shortcuts


" Python - PEP8 Plugin
let g:pep8_map='<Leader>8'

" Python - SuperTab Plugin
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType='context'

" Python - PyDoc Preview
set completeopt=menuone,longest,preview
set expandtab
set tabstop=4

" NERDTree
map <leader>n :NERDTreeToggle<CR>

" Function list
map <leader>c :Flisttoggle<CR>

" Fugitive plugin
set statusline+=%{fugitive#statusline()}
set statusline+=%F

" Syntastic plugin
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
"let g:syntastic_check_on_wq=0^C


" Arduino Config
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

