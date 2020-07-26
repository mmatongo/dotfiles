""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
"                                                                              "
"                  ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗                     "
"                  ██║   ██║██║████╗ ████║██╔══██╗██╔════╝                     "
"                  ██║   ██║██║██╔████╔██║██████╔╝██║                          "
"                  ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║                          "
"                   ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗                     "
"                    ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝                     "
"                                                                              "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
                                       

""""""""""""""""""""""""""
"                        "
"          Plug          "
"                        "
""""""""""""""""""""""""""
call plug#begin()
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'wellle/targets.vim'
Plug 'airblade/vim-gitgutter'
Plug 'andymass/vim-matchup'
Plug 'godlygeek/tabular'
Plug 'jiangmiao/auto-pairs'
Plug 'neovimhaskell/haskell-vim'
Plug 'dense-analysis/ale'

" tpope
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-fugitive'

" syntax and friends
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'rust-lang/rust.vim'
Plug 'lervag/vimtex'
Plug 'dart-lang/dart-vim-plugin'

" colorschemes
"Plug 'nerdypepper/agila.vim'
"Plug 'nerdypepper/chestnut.vim'
"Plug 'nerdypepper/vim-colors-plain', { 'branch': 'duotone' }

" unassigned:
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'

call plug#end()



""""""""""""""""""""""""""
"                        "
"         Colors         "
"                        "
""""""""""""""""""""""""""
set termguicolors
colorscheme abyss
set background=dark


""""""""""""""""""""""""""
"                        "
"         Leader         "
"                        "
""""""""""""""""""""""""""
let mapleader=' '


""""""""""""""""""""""""""
"                        "
"     Custom commands    "
"                        "
""""""""""""""""""""""""""
nnoremap <silent> <leader>/ :noh<cr>
"" js
nnoremap <silent> <leader>cl iconsole.log();<esc>hi


""""""""""""""""""""""""""
"                        "
"         netrw          "
"                        "
""""""""""""""""""""""""""
"" Config
let g:netrw_liststyle = 3
let g:netrw_banner = 0

"" Open file explorer
nnoremap <silent> <leader>ee :Explore<cr>
nnoremap <silent> <leader>er :Sexplore<cr>
nnoremap <silent> <leader>ew :Vexplore<cr>

"" Resize pane
" add/remove columns
nnoremap <silent> <leader>ej :resize +5<cr>
nnoremap <silent> <leader>ek :resize -5<cr>
" set pane width to 80 rows
nnoremap <silent> <leader>eo :vertical resize 80<cr>
" add/remove rows
nnoremap <silent> <leader>el :vertical resize +5<cr>
nnoremap <silent> <leader>eh :vertical resize -5<cr>

"" Change pane focus
nnoremap <silent> <leader>w <C-W>w<cr>


""""""""""""""""""""""""""
"                        "
"      Status line       "
"                        "
""""""""""""""""""""""""""
"au InsertEnter * hi statusline guifg=black guibg=#F8D146 ctermfg=black ctermbg=magenta
"au InsertLeave * hi statusline guifg=black guibg=#77979D ctermfg=black ctermbg=cyan

"hi statusline guifg=black guibg=#77979D ctermfg=black ctermbg=cyan
"hi User1 ctermfg=007 ctermbg=239 guibg=#3D4047 guifg=#adadad

let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%f%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*                                      " Separator
set statusline+=%2*\ %Y                                  " FileType
set statusline+=%3*                                      " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ %{&ff}                                 " FileFormat
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*                                      " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%p%%)\               " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode



""""""""""""""""""""""""""
"                        "
"    Relative Numbers    "
"                        "
""""""""""""""""""""""""""
set number relativenumber
set nu rnu


""""""""""""""""""""""""""
"                        "
"     Tab characters     "
"                        "
""""""""""""""""""""""""""
filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2


""""""""""""""""""""""""""
"                        "
"        Prettier        "
"                        "
""""""""""""""""""""""""""
nnoremap <silent> <leader>n :Prettier<cr>
let g:prettier#config#print_width = 80
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#parser = 'babylon'
" Disables quick-fix to auto open when files have errors
let g:prettier#quickfix_enabled=0


""""""""""""""""""""""""""
"                        "
"        fzf.vim         "
"                        "
""""""""""""""""""""""""""
nnoremap <silent> <leader>f :execute 'Ag ' . input('Ag/')<cr><cr>
nnoremap <silent> <leader>p :Files<cr>


""""""""""""""""""""""""""
"                        "
"         Tabs           "
"                        "
""""""""""""""""""""""""""
nnoremap <silent> <leader>t :tabnew<cr>
nnoremap <silent> <leader>x :tabclose<cr>
nnoremap <silent> <leader>j gT
nnoremap <silent> <leader>k gt
" Go to last active tab "
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <leader>l :exe "tabn ".g:lasttab<cr>


""""""""""""""""""""""""""
"                        "
"      Git signify       "
"                        "
""""""""""""""""""""""""""
let g:signify_disable_by_default = 1
nnoremap <silent> <leader>g :SignifyToggle<cr>
highlight SignColumn        ctermbg=NONE                                guibg=NONE    gui=NONE cterm=NONE
highlight SignifySignAdd    ctermfg=green ctermbg=none                  guibg=none
highlight SignifySignDelete ctermfg=red   ctermbg=none    guifg=#dfdfdf guibg=#ff0000
highlight SignifySignChange ctermfg=blue  ctermbg=none    guifg=#000000 guibg=#ffff00


""""""""""""""""""""""""""
"                        "
"       coc.nvim         "
"                        "
""""""""""""""""""""""""""
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ ""
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : ""

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


""""""""""""""""""""""""""
"                        "
"         black          "
"                        "
""""""""""""""""""""""""""
" run black inside Docker
nnoremap <silent> <leader>db :!docker exec django black %<cr>


" Daniels Stuff

" augroups

augroup plaintext
    autocmd!
	autocmd FileType text,markdown setlocal ts=2 sts=2 sw=2 expandtab textwidth=60
augroup END

augroup webdev
    autocmd!
	autocmd FileType less,css,html,js?,ts? setlocal ts=2 sts=2 sw=2 expandtab
	autocmd FileType less,css,html nnoremap <Leader>s viB:sort<cr>
augroup END

augroup scm_pairs
    autocmd!
    autocmd FileType scheme let b:AutoPairs = {"(": ")", "[": "]", "{": "}"}
augroup END

augroup texwrap
    autocmd!
    autocmd FileType tex set wrap
    autocmd FileType tex nnoremap j gj
    autocmd FileType tex nnoremap k gk
augroup END

augroup rustdev
    autocmd!
	autocmd FileType rs setlocal ts=4 sts=4 sw=4 expandtab
augroup END

"augroup highlight_follows_vim
"	autocmd!
"	autocmd WinEnter * set cursorline
"	autocmd WinLeave * set nocursorline
"augroup END

augroup restorecursor
	autocmd BufReadPost *
				\ if line("'\"") > 1 && line("'\"") <= line("$") |
				\   execute "normal! g`\"" |
				\ endif
augroup END



set noshowmode
set noruler
set laststatus=0
set noshowcmd
set cmdheight=1


"Daniels Stuff Ends Here

" general settings
set nobackup
set nowritebackup
set noswapfile " get rid of swapfiles everywhere
set dir=/tmp

syntax on

set omnifunc=syntaxcomplete#Complete
set completefunc=LanguageClient#complete
set list
filetype off
filetype plugin indent on
set nowrap
set listchars=tab:┊\ ,nbsp:␣,trail:·,extends:>,precedes:<
set fillchars=vert:\│
set ignorecase
set smartcase
set sidescroll=40
set incsearch
set hlsearch
set undofile
set undodir=~/tmp
set path+=**
set backspace=indent,eol,start
set hidden
set wildmenu
set foldmethod=manual
set complete=.,w,b,i,u,t,
set mouse=a
set conceallevel=0
set nocursorline
set nonumber
set grepprg=rg\ --vimgrep\ --no-heading
set grepformat=%f:%l:%c:%m,%f:%l:%m
set cmdheight=2
set shortmess+=c
set updatetime=300
set signcolumn=yes

let g:netrw_browsex_viewer= "xdg-open"

set shiftwidth=4     " indent = 4 spaces
set expandtab
set tabstop=4        " tab = 4 spaces
set softtabstop=4    " backspace through spaces

" Functions
function! GetTabber()  " a lil function that integrates well with Tabular.vim
	let c = nr2char(getchar())
	:execute 'Tabularize /' . c
endfunction


" Ugh
:command! WQ wq
:command! Wq wq
:command! Wqa wqa
:command! W w
:command! Q q

" abbreviations
abclear
iab #i #include
iab #d #define
cab dst put =strftime('%d %a, %b %Y')<cr>
cab vg vimgrep


" plugin settings

" emmet
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-X>'

" gitgutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added                     = '+'       " '┃'
let g:gitgutter_sign_modified                  = '~'       " '┃'
let g:gitgutter_sign_removed                   = '-'       " '┃'
let g:gitgutter_sign_removed_first_line        = '-'       " '┃'
let g:gitgutter_sign_modified_removed          = '~'       " '┃'

highlight GitGutterAdd    ctermfg=8
highlight GitGutterChange ctermfg=8
highlight GitGutterDelete ctermfg=8

" rust.vim
let g:rustfmt_autosave = 1

" fzf colors
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" indentLine
let g:indentLine_setColors = 0
let g:indentLine_char      = '┆'

let g:latex_view_general_viewer = 'zathura'
let g:vimtex_view_method = "zathura"

" man pages
let g:ft_man_open_mode = 'tab'

" dart
let dart_html_in_string=v:true
let dart_style_guide=2

" Daniel's stuff again
autocmd VimEnter * NERDTree
set ma

" Open/close NERDTree Tabs with \t
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

" Ctrl-c
vnoremap <C-c> "*y

" numbering
set nu

" haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack
