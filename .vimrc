call pathogen#infect()
filetype plugin indent on
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

set wildmenu
set wildmode=longest,list

set guifont=Bitstream\ Vera\ Sans\ Mono:h13

let phpcs_conf = expand("~/development/Web/tests/standards/stable-ruleset.xml")
if filereadable(phpcs_conf)
    let g:syntastic_phpcs_conf = "--standard=".phpcs_conf
endif

command! Lint !php -l % 
command! Blame !git blame % 
command! Run !php -r 'require "Loader.php"; require $argv[1];' %
command! Refresh set noconfirm | bufdo e! | set confirm

nmap <leader>tb :TagbarToggle<CR>

