runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

autocmd FileType python set omnifunc=pythoncomplete#Complete
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4

"Автоматическая перегрузка .vimrc
autocmd! bufwritepost .vimrc source %

let mapleader=','

"Quick save
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

filetype on
filetype plugin on
"По F5 запускаем питон-приложение"
map <F5> :w\|!python3 '%'<cr>
imap <F5> <Esc><F5>

"Settings for Racket programming
map <C-M> :w<CR>:!rlwrap /usr/racket/bin/racket -t "%" -l racket/base -i<CR><C-D>

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

set showmatch

"Disable arrow keys
noremap <Up> ""
noremap! <Up> <Esc>
noremap <Down> ""
noremap! <Down> <Esc>
noremap <Left> ""
noremap! <Left> <Esc>
noremap <Right> ""
noremap! <Right> <Esc>




"Show whitespaces"
"Must be inserted before colorscheme"
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace  /\s\+$/  

"Подсветка с учетом темного фона"
set background=dark
set t_Co=256
colorscheme wombat256mod

set expandtab
set textwidth=80
set colorcolumn=80
highlight ColorColumn ctermbg=233
set nowrap
set fo-=t
set tabstop=4
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

nmap <F8> :TagbarToggle<CR>
"Активация мыши"
set mouse=a
"Работа мышью - вставка текста по middleclick"
map <S-Insert> <MiddleMouse> 
map! <S-Insert> <MiddleMouse>
"По F4 открываем новую вкладку с обзором файлов"
imap <F4> <Esc>:browse tabnew<CR> 
map <F4> <Esc>:browse tabnew<CR>

map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>
