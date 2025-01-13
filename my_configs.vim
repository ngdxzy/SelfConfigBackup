
set nu
set cursorline
set showcmd
set splitbelow
nnoremap <c-l> :NERDTree<CR>
nnoremap <c-t> :term ++rows=10<CR>
let g:NERDTreeWinPos = "left"

" set nocompatible              " be iMproved, required
" filetype off                  " required
" 
" " set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" " " alternatively, pass a path where Vundle should install plugins
" " "call vundle#begin('~/some/path/here')
" "
" " " let Vundle manage Vundle, required
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'preservim/nerdtree'
" "
" "" The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " " plugin on GitHub repo
" 
" Plugin 'tpope/vim-fugitive'
" " Plugin 'dense-analysis/ale'
" 
" " " plugin from http://vim-scripts.org/vim/scripts.html
" " " Plugin 'L9'
" " " Git plugin not hosted on GitHub
" 
" Plugin 'git://git.wincent.com/command-t.git'
" 
" " " git repos on your local machine (i.e. when working on your own plugin)
" 
" " Plugin 'file:///home/alfred/.vim/bundle/plugin'
" 
" " " The sparkup vim script is in a subdirectory of this repo called vim.
" " " Pass the path to set the runtimepath properly.
" 
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 
" " " Install L9 and avoid a Naming conflict if you've already installed a
" " " different version somewhere else.
" " " Plugin 'ascenator/L9', {'name': 'newL9'}
" "
" "" All of your Plugins must be added before the following line
" Plugin 'davidhalter/jedi-vim'
" Plugin 'https://github.com/ycm-core/YouCompleteMe.git'
" 
" call vundle#end()            " required
" filetype plugin indent on    " required



let g:ycm_global_ycm_extra_conf='/home/alfred/.vim_runtime/my_plugins/YouCompleteMe/.ycm_extra_conf.py'
nmap <c-m> <plug>(YCMHover)
augroup MyYCMCustom
    autocmd!
    autocmd FileType c,cpp let b:ycm_hover = {
        \ 'command': 'GetDoc',
        \ 'syntax': &filetype
        \ }
augroup END

let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_assignments_command = "<leader>a"
let g:jedi#usages_command = "<leader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#popup_on_dot = 0

set laststatus=0
autocmd BufWritePost *.c,*.h,*.cpp,*.hpp silent! !ctags . &


let g:matlab_term_cmd='matlab -nodesktop'

let g:matlab_screen_terminal_height = 10
inoremap jk <Esc>

set t_Co=256   " This is may or may not needed.

set background=light
colorscheme PaperColor
set showtabline=0
let g:airline_theme='papercolor'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


set showtabline=0

