filetype plugin on
set ignorecase
set smartcase
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent
set number
set ls=2
set linebreak
set hidden
set hlsearch
set dir=~/swp
let mapleader = ","

set spell
set spelllang=en_us
hi SpellBad cterm=underline ctermfg=Red ctermbg=16

syntax on

inoremap <C-P> <ESC>:call PhpDocSingle()<CR> 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

let g:bufExplorerSortBy='fullpath'
let g:bufExplorerShowRelativePath=1
let g:bufExplorerSplitOutPathName=1

" Wrap visual selection in an HTML tag.
vmap <Leader>w <Esc>:call VisualHTMLTagWrap()<CR>
function! VisualHTMLTagWrap()
    let tag = input("Tag to wrap block: ")
    if len(tag) > 0
        normal `>
        if &selection == 'exclusive'
            exe "normal i</".tag.">"
        else
            exe "normal a</".tag.">"
        endif
        normal `<
        exe "normal i<".tag.">"
        normal `<
    endif
endfunction

" Autocompletion tweaks

"set completeopt=longest,menuone
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set wildmenu
set wildmode=longest,list

