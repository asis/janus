if has("gui")
  set guifont=Bitstream\ Vera\ Sans\ Mono\ 11
  colorscheme molokai
endif

"Terminal color goodness
set t_Co=256

"Fix mouse stuff in xterm
set ttymouse=xterm2
set mouse=a

"Setup ack
set grepprg=ack-grep\ -a

nnoremap <Silent> <C-s> :w<CR>
inoremap <Silent> <C-s> <Esc>:w<CR>a
nnoremap <Silent> <C-w> :q<CR>
inoremap <Silent> <C-w> <Esc>:q<CR>

"switching between windows
inoremap <silent> <A-Left> <Esc>:wincmd h<cr>
nnoremap <silent> <A-Left> :wincmd h<cr>

inoremap <silent> <A-Right> <Esc>:wincmd l<cr>
nnoremap <silent> <A-Right> :wincmd l<cr>

inoremap <silent> <A-Up> <Esc>:wincmd k<cr>
nnoremap <silent> <A-Up> :wincmd k<cr>

inoremap <silent> <A-Down> <Esc>:wincmd j<cr>
nnoremap <silent> <A-Down> :wincmd j<cr>
