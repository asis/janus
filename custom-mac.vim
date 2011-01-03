if has("gui")
    set guifont=Menlo\ Regular:h14.0
endif

"switching between windows
inoremap <silent> <M-Left> <Esc>:wincmd h<cr>
nnoremap <silent> <M-Left> :wincmd h<cr>

inoremap <silent> <M-Right> <Esc>:wincmd l<cr>
nnoremap <silent> <M-Right> :wincmd l<cr>

inoremap <silent> <M-Up> <Esc>:wincmd k<cr>
nnoremap <silent> <M-Up> :wincmd k<cr>

inoremap <silent> <M-Down> <Esc>:wincmd j<cr>
nnoremap <silent> <M-Down> :wincmd j<cr>

imap <D-Return> <Esc>o

