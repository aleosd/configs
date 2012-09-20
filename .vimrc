autocmd FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"Автоматическая перегрузка .vimrc
autocmd! bufwritepost .vimrc source %

"Quick save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

filetype on
filetype plugin on
"По F5 запускаем питон-приложение"
map <F5> :w\|!python3 '%'<cr>
imap <F5> <Esc><F5>

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set showmatch

"Подсветка с учетом темного фона"
set background=dark
colorscheme torte
set expandtab
set textwidth=80
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set modeline
"Номера строк"
set number

"Настройка строки состояния"
set laststatus=2
set noruler
set statusline=%f%h%m%r\ %4b\ %{&encoding}\ \ %=%l,%c\ %p%%

"Включение подсветки"
:syntax on

"Активация мыши"
set mouse=a
"Работа мышью - вставка текста по middleclick"
map <S-Insert> <MiddleMouse> 
map! <S-Insert> <MiddleMouse>
"По F4 открываем новую вкладку с обзором файлов"
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>
