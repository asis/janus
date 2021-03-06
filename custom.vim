"****************************
" My VIM customizations
"****************************

"tenderlove's statusline
set statusline=%t%(\ [%n%M]%)%(\ %H%R%W%)\ %(%c-%v,\ %l\ of\ %L,\ (%o)\ %P\ 0x%B\ (%b)%)

"Don't update the display while executing macros
set lazyredraw

"Remove visual bell
set vb t_vb=
set novisualbell

"Enable hidden buffers
set hidden

"enable omnicompletion
set ofu=syntaxcomplete#Complete
set completeopt=menu,menuone,preview

"add '-' to iskeyword list
set iskeyword+=-

"share clipboard
set clipboard+=unnamed

"clear search highlights
nnoremap <silent> <C-l> :nohlsearch<CR>

"editor UI fine tuning
set cursorline
set noerrorbells
set wrap
set whichwrap=b,s,<,>,~,[,]

"CTAGS
set tags=~/code/tags

"NERDTree customizations
let NERDTreeChDirMode=2

"edit vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>

"reload vim config
nmap <silent> <leader>sv :source ~/.vimrc<CR>

"custom mappings
nnoremap <leader>t :TlistToggle<CR>
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>
vnoremap <Tab> >>gV
vnoremap <s-Tab> <<gV
nnoremap j gj
nnoremap k gk

"switching between tabs
map <c-tab> :tabnext<cr>
map <c-s-tab> :tabprevious<cr>

imap <c-tab> <esc>:tabnext<cr>
imap <c-s-tab> <esc>:tabprevious<cr>

"Switch buffers
set switchbuf=usetab

"CommandT switch
nnoremap <silent> <leader>f :CommandT<CR>

" Colorscheme Config
set t_Co=256
syntax enable
set background=dark
colorscheme desert256

"Silence hammer errors
let g:HammerQuiet=1

"Autosave on focus lost
au FocusLost * :wa

"Load OS dependent customizations
if has("mac")
    source ~/.vim/custom-mac.vim
elseif has("unix")
    source ~/.vim/custom-linux.vim
endif

"write as su
command! SudoW w !sudo tee % >/dev/null

"visual select most recently edited text
nmap gV `[v`]

"Add some files to the ignore list
set wildignore+=*.class,.git/**,.svn/**,target/**

" Splitting behaviour
set splitright
set splitbelow

" Spell check some filetypes
autocmd FileType tex,pandoc,markdown setlocal spl=es spell

" Shut up you lusty explorer!
let g:LustyExplorerSuppressRubyWarning = 1

" Get away from the bottom line!
set scrolloff=3

" Run the current file in a ConqueTerm, great for ruby tests
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_CWInsert = 1
nmap <silent> <Leader>tr :call RunRubyCurrentFileConque()<CR>
nmap <silent> <Leader>tR :call RunRakeConque()<CR>
nmap <silent> <Leader>tc :execute 'ConqueTermSplit script/console'<CR>
nmap <silent> <Leader>ti :execute 'ConqueTermSplit pry'<CR>
nmap <silent> <Leader>tb :execute 'ConqueTermSplit /bin/bash --login'<CR>
nmap <silent> <Leader>tS :call RunRspecCurrentFileConque()<CR>

" Send the current selection to conqueterm. This lets you easily veal
" Ruby code in an irb console. Note: you must have only one ConqueTerm
" console open and running irb for this to work. Somehow it gets confused
" when multiple consoles are open. If you know how to fix this let me know :)
let g:ConqueTerm_SendVisKey = '<Leader>te'
