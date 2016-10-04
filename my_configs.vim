" colorscheme
colorscheme peachpuff

" enable mouse support
set mouse=a

" better moving between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"line numbers
set number

" shortcuts to common commands
let mapleader = ","
nnoremap <leader>a :Ack 
nnoremap <leader>e :tabnew<CR>:CommandT<CR>
nnoremap <leader>l :NERDTreeToggle<CR>
nnoremap <leader>o :CommandT<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>s :vsplit<CR>
nnoremap <leader>w :tabclose<CR>

" ; is better than :, and kj is better than ctrl-c
nnoremap ; :
" also autosave when going to insert mode
inoremap kj <Esc>:w<CR>

" faster tab navigation
nnoremap <S-tab> :tabprevious<CR>
nnoremap <tab> :tabnext<CR>

" use system clipboard by default
set clipboard=unnamed

" disable backups
set nobackup
set nowritebackup
set noswapfile

" better ycm support for django
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" better ultisnips support for django
"let g:UltiSnipsExpandTrigger       = "<c-j>"
"let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>" "List possible snippets based on current file



" Ctrl-l for snippet with UltiSnips, tab for normal completion with YouCompleteMe
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']

let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<C-j>"
let g:UltiSnipsJumpBackwardTrigger = "<C-k>"

" Auto close ycm preview window
let g:ycm_autoclose_preview_window_after_insertion = 1

" insert spaces instead of tabs
set tabstop=4
set shiftwidth=4
set expandtab

set nofoldenable

hi Search cterm=NONE ctermfg=grey ctermbg=blue

" disable syntax check for vim
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }
