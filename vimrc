" Basic configurations
set hls
set nu
set is
set ruler
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
" Select Visual Code style color scheme (codedark)
colorscheme codedark

" Remappings

" Highlight trailing spaces

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"Show a mark when passing an specified column (80 in my case)

highlight ColorColumn ctermbg=DarkCyan
call matchadd('ColorColumn', '\%81v', 100)

" Clear highlighting on escape in normal mode

nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Always open help command in vertical

augroup vimrc_help
  autocmd!
  autocmd BufEnter *.txt if &buftype == 'help' | wincmd L | endif
augroup END

" Netrw Configurations
let g:netrw_liststyle = 3 " The default listing style is wide(3)
let g:netrw_banner = 0 " Remove the Banner
let g:netrw_browse_split = 0 "Always open a new archive in the current tab

" Provides vim access to all archives inside the project
" getting a more complete tab-completion

set path+=**

" Display all matching files when we tab complete

set wildmenu
