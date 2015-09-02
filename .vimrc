filetype plugin on

execute pathogen#infect()
call pathogen#helptags()

set nocompatible

syntax on
filetype plugin indent on
colorscheme elflord

set backspace=indent,eol,start

set gfn=Monospace\ 9
set guioptions=m

set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab

set wildmode=longest,list
set wildmenu

if has("statusline") && !&cp
  set laststatus=2
  set statusline=%5(#%n%)\ \|\ %f\ %m\ %r\ %=%03b\ [0x%02B]\ \|\ Col:\ %-5v\ \|\ Line:\ %-10(%l/%L%)\ %6([%p%%]%)
endif

set hidden

set foldcolumn=2
set fdm=syntax

set encoding=utf-8

set number
set nowrap
" \tw - włącza/wyłacza zawijanie
nmap <silent> <leader>tw :set invwrap<CR>:set wrap?<CR>
set showmode
set showcmd
set ruler

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
" \hs - włącza/wyłacza podświetlenie wyszukiwania
nmap <leader>hs :set hlsearch! hlsearch?<CR>

set list
set listchars=""                  " Reset the listchars
set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=extends:>          " The character to show in the last column when wrap is
                                  " off and the line continues beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is
                                  " off and the line continues beyond the left of the screen

" Strzałka dół/góra to przesunięcie na bazie wyświetlanych lini, nie
" fizycznych.
map <Down> gj
map <Up> gk

" EasyMotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_use_upper = 1
let g:EasyMotion_use_smartsign_us = 1
nmap s <Plug>(easymotion-s)
nmap S <Plug>(easymotion-s2)

" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)
" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" StripWhitespace
nmap <leader>wt :ToggleWhitespace<CR>
nmap <leader>ws :StripWhitespace<CR>

" Mapowanie Ctrl-B do szybkiego sprawdzania składni
autocmd BufNewFile,BufRead *.php map <C-B> :!php5 -l %<CR>
autocmd BufNewFile,BufRead *.pm map <C-B> :!perl -c %<CR>
autocmd BufNewFile,BufRead *.pl map <C-B> :!perl -c %<CR>

" Kolory
highlight Search     guibg=Grey
highlight ExtraWhitespace ctermbg=1 guibg=Red
highlight DiffAdd    term=bold                           ctermfg=7 ctermbg=4           guibg=DarkBlue guifg=White
highlight DiffDelete term=bold                           ctermfg=7 ctermbg=4           guibg=DarkBlue guifg=White
highlight DiffChange term=bold     cterm=bold            ctermfg=7 ctermbg=4 guibg=DarkBlue guifg=White
highlight DiffText   term=reverse  cterm=bold,underline  ctermfg=7 ctermbg=4 guibg=DarkBlue guifg=White gui=underline
