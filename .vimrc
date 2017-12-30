"===STANDARD
set number
set cursorline
set linespace=10

"===SEARCH
set incsearch
set hlsearch

"===PYTHON
autocmd FileType python :set ts=4 sw=4 expandtab softtabstop=4
autocmd FileType python :set colorcolumn=79 wrap textwidth=79

"===C++
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :normal gg=G
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set tabstop=4
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set softtabstop=4
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set shiftwidth=4 
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set noexpandtab 
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set textwidth=79
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set autoindent
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set cindent
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set colorcolumn=79
autocmd BufNewFile,BufRead,BufWritePre *.cpp,*.c,*.h :set wrap
"autocmd FileType cpp	:iabbrev <buff *.cpper> FF, *.h if() {<enter><tab><enter>}<esc>kkA<left><left><left>
"autocmd FileType cpp 	:iabbrev <buffer> RR for (int i=0; i<; i++) {<enter><tab><enter>}<esc>kkwwwwwwa<backspace>

"===TEXT
autocmd BufNewFile,BufRead,BufWritePre *.txt :set colorcolumn=72
autocmd BufNewFile,BufRead,BufWritePre *.txt :set wrap
autocmd BufNewFile,BufRead,BufWritePre *.txt :set textwidth=72
autocmd BufNewFile,BufRead,BufWritePre *.txt :set formatoptions=tcqaw
autocmd BufNewFile,BufRead,BufWritePre *.txt :set nocindent 
autocmd BufNewFile,BufRead,BufWritePre *.txt :set tabstop=4
autocmd BufNewFile,BufRead,BufWritePre *.txt :set softtabstop=4
autocmd BufNewFile,BufRead,BufWritePre *.txt :set shiftwidth=4
autocmd BufNewFile,BufRead,BufWritePre *.txt :set expandtab
set formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*

"=================Mapping=================
let mapleader = "\<F2>"
:nnoremap <leader>sv :source $MYVIMRC<cr>
:inoremap jk <esc>

"=================Abbreviations=================
iabbrev @@g jacques.troussard@gmail.com
iabbrev @@s jtroussa@mail.umw.edu

"=================CodeAbbreviations=================
autocmd FileType markdown :set wrapmargin=2
autocmd FileType markdown :set textwidth=80

"=================Appearence=================
syntax on

"=================AutoCommands=================
autocmd BufWritePre *.cpp :normal gg=G

"=================Header Specific AutoCmds=================

autocmd bufnewfile *.cpsc430.txt so /home/sparrow/Templates/cpsc430_header.txt
autocmd bufnewfile *.cpsc430.txt exe "1," . 3 . "g/DATE/s//" .strftime('%b %d %Y %H:%M')

autocmd bufnewfile *.cpsc405.txt so /home/sparrow/Templates/cpsc405_header.txt
autocmd bufnewfile *.cpsc405.txt exe "1," . 3 . "g/DATE/s//" .strftime('%b %d %Y %H:%M')

autocmd bufnewfile *.cpsc440.cpp so /home/sparrow/Templates/cpsc440_header.txt
autocmd bufnewfile *.cpsc440.cpp exe "1," . 6 . "g/DATE/s//" .strftime('%b %d %Y %H:%M')

autocmd bufnewfile *.cpsc415.txt so /home/sparrow/Templates/cpsc415_header.txt
autocmd bufnewfile *.cpsc415.txt exe "1," . 3 . "g/DATE/s//" .strftime('%b %d %Y %H:%M')

autocmd bufnewfile *.cpsc448.txt so /home/sparrow/Templates/cpsc448_header.txt
autocmd bufnewfile *.cpsc448.txt exe "1," . 3 . "g/DATE/s//" .strftime('%b %d %Y %H:%M')

"autocmd bufnewfile *.h so /home/sparrow/Templates/cppbasic_header.txt
"autocmd bufnewfile *.h exe "g/DATE/s//" .strftime('%b %d %Y %H:%M')
"autocmd bufnewfile *.h exe "g/FNAME/s//" expand('%:t') 
"autocmd bufnewfile *.h exe "10," . 11 . "g/GUARD/s//" expand('%:t') 


highlight comment ctermfg=Yellow
syntax enable
