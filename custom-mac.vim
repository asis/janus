if has("gui")
    set guifont=Menlo\ Regular:h14.0
    set transparency=5
endif

colorscheme solarized

"switching between windows
imap <silent> <M-Left> <Esc>:wincmd h<cr>
nmap <silent> <M-Left> :wincmd h<cr>

imap <silent> <M-Right> <Esc>:wincmd l<cr>
nmap <silent> <M-Right> :wincmd l<cr>

imap <silent> <M-Up> <Esc>:wincmd k<cr>
nmap <silent> <M-Up> :wincmd k<cr>

imap <silent> <M-Down> <Esc>:wincmd j<cr>
nmap <silent> <M-Down> :wincmd j<cr>

imap <silent> <D-Return> <Esc>o

