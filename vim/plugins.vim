" ----------------------------------------------------------------------------
"   Plug
" ----------------------------------------------------------------------------

" Install vim-plug if we don't already have it
if empty(glob("~/.vim/autoload/plug.vim"))
    " Ensure all needed directories exist  (Thanks @kapadiamush)
    execute 'mkdir -p ~/.vim/plugged'
    execute 'mkdir -p ~/.vim/autoload'
    " Download the actual plugin manager
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

  " Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }

  Plug 'leafgarland/typescript-vim'
  " Split navigation that works with tmux
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'tmhedberg/SimpylFold'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Make tab handle all completions
  " Plug 'ervandew/supertab'
  Plug 'jeffkreeftmeijer/vim-numbertoggle'
  " Fuzzy file opener
  " Plug 'kien/ctrlp.vim' <-- Not maintained any more
  Plug 'ctrlpvim/ctrlp.vim'

  " Plug 'Valloric/YouCompleteMe',  { 'do': './install.py --tern-completer' }

  Plug 'scrooloose/nerdtree'
  Plug 'thoughtbot/vim-rspec'
  Plug 'ngmy/vim-rubocop'
  Plug 'tpope/vim-rails'
  Plug 'tpope/vim-bundler'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-repeat'
  Plug 'tpope/vim-commentary'
  filetype plugin indent on                   " required!
call plug#end()

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_depth=40 
let g:ctrlp_working_path_mode='ra'
" If a file is already open, open it again in a new pane instead of switching to the existing pane
let g:ctrlp_switch_buffer = 'et'
let g:ctrlp_user_command = 'find %s -type f'
let g:SimpylFold_docstring_preview=1

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
