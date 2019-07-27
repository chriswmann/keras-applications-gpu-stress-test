set nocompatible              " be iMproved, required
" Enable CursorLine
set cursorline
" Centralised swapfiles
set directory^=$HOME/.vim/swapfiles/
" Persistent undo
set undodir=~/.vim/undodir
set undofile
"Use system clipboard by default
set clipboard=unnamed
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType vue set omnifunc=vuecomplete#CompleteVue
autocmd FileType ts set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType js set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.ts set syntax=javascript
imap jj <Esc>
imap <S-Tab> <C-X><C-F>
noremap ; l
noremap l k
noremap k j
noremap j h
noremap  <buffer> <silent> $ g$
noremap  <buffer> <silent> 0 g0
"oremap  <buffer> <silent> j gj
"noremap  <buffer> <silent> k gk
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>
let mapleader = " "
nnoremap <leader><Enter> :noh<CR><CR>
"inoremap ( ()<Esc>i
"inoremap { {}<Esc>i
"inoremap [ []<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i
inoremap <html> <html></html><Esc>7h i
inoremap <div> <div></div><Esc>6h i
inoremap <p> <p></p><Esc>4h i
inoremap <body> <body></body><Esc>7h i
inoremap <span> <span></span><Esc>7h i
inoremap <button> <button></button><Esc>9h i
inoremap <h1> <h1></h1><Esc>5h i
inoremap <h2> <h2></h2><Esc>5h i
inoremap <h3> <h3></h3><Esc>5h i
inoremap <h4> <h4></h4><Esc>5h i
inoremap <h5> <h5></h5><Esc>5h i
inoremap <h6> <h6></h6><Esc>5h i
inoremap <br> <br></br><Esc>5h i
inoremap <template> <template></template><Esc>11h i
inoremap <ol> <ol></ol><Esc>5h i
inoremap <ul> <ul></ul><Esc>5h i
inoremap <li> <li></li><Esc>5h i
inoremap <a> <a href=""></a><Esc>3h i
inoremap <script> "script type=\"application/javascript\" src=\"\"></script>"<Esc>10h i
set wildmode=list:longest,list:full
" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
""function! InsertTabWrapper()
""    let col = col('.') - 1
""    if !col || getline('.')[col - 1] !~ '\k'
""        return "\<tab>"
""    else
""        return "\<c-n>"
""    endif
""endfunction
""inoremap <Tab> <c-r>=InsertTabWrapper()<CR>
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "<S-Tab>"
""inoremap <Tab> <c-n>
""inoremap <S-Tab> <c-p>
set autoindent
set backspace=indent,eol,start
set completeopt-=preview
set hlsearch
set ignorecase
set laststatus=2
set number
set ruler
set showcmd
set smartcase
set smarttab
set statusline=%f\ %=col:\ %c\ 
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
set textwidth=200
set wildmenu
set wildmode=longest:full,full
set foldmethod=manual
set foldnestmax=10
set nofoldenable
set foldlevel=2
syntax on
set background=dark
"colorscheme solarized
" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
" Load all of the helptags now, after plugins have been loaded.
" All messages and errors will be ignored.
silent! helptags ALL
let &t_SI="\033[5 q" " start insert mode
let &t_EI="\033[1 q" " end insert mode
