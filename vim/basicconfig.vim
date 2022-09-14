syntax on

set encoding=utf-8

filetype plugin indent on
set path+=**
set autoindent
set ts=2 " indent to 2 spaces
set shiftwidth=2
set expandtab " use spaces not tabs
set showmatch " show bracket matches
set ic " in search
set hlsearch " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ttimeoutlen=100               " decrease timeout for faster insert with 'O'
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
"set laststatus=2                  " always show status bar
set list listchars=tab:»·,trail:· " show extra space characters
"set nofoldenable                  " disable code folding
set wildmenu                      " enable bash style tab completion
set wildmode=list:longest,full
set undofile
" set a directory to store the undo history
set undodir=~/.vimundo/
set background=dark
colorscheme vimbrant
highlight ColorColumn ctermbg=7
highlight ColorColumn guibg=Gray

" highlight trailing spaces in annoying red
highlight ExtraWhitespace ctermbg=1 guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/.git/*
set wildignore+=*.bmp,*.ico,*.jpg,*.png
set wildignore+=*.DS_STORE,*.git,*.svn
