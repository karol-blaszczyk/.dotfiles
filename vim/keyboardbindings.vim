" :let mapleader = ","
let mapleader = "\<Space>"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

nmap <silent> <Leader>n :NERDTreeToggle<CR>
map <leader>m :NERDTreeFind<cr>


"  ------------
"  CTRL-P
"  -----------
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'
  let g:ctrlp_max_depth=40 
  let g:ctrlp_working_path_mode='ra'
  " If a file is already open, open it again in a new pane instead of switching to the existing pane
  let g:ctrlp_switch_buffer = 'et'
  let g:ctrlp_user_command = 'find %s -type f'

"
" -------------
"  FZF
"  ------------
  " This is the default extra key bindings
  let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }

  " Default fzf layout
  " - down / up / left / right
  let g:fzf_layout = { 'down': '~40%' }

  " In Neovim, you can set up fzf window using a Vim command
  let g:fzf_layout = { 'window': 'enew' }
  let g:fzf_layout = { 'window': '-tabnew' }

  " Customize fzf colors to match your color scheme
  let g:fzf_colors =
  \ { 'fg':      ['fg', 'Normal'],
    \ 'bg':      ['bg', 'Normal'],
    \ 'hl':      ['fg', 'Comment'],
    \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
    \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
    \ 'hl+':     ['fg', 'Statement'],
    \ 'info':    ['fg', 'PreProc'],
    \ 'prompt':  ['fg', 'Conditional'],
    \ 'pointer': ['fg', 'Exception'],
    \ 'marker':  ['fg', 'Keyword'],
    \ 'spinner': ['fg', 'Label'],
    \ 'header':  ['fg', 'Comment'] }

  " Enable per-command history.
  " CTRL-N and CTRL-P will be automatically bound to next-history and
  " previous-history instead of down and up. If you don't like the change,
  " explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
  let g:fzf_history_dir = '~/.fzf-history'
