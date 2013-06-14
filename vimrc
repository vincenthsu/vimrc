" Basics
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set background=dark " we plan to use a dark background
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines, leave the cursor
    "             |||||||      between joined lines
    "             |||||||+-- When a new match is created (showmatch)
    "             ||||||      pause for .5
    "             ||||||+-- Set buffer options when entering the
    "             |||||      buffer
    "             |||||+-- :write command updates current file name
    "             ||||+-- Automatically add <CR> to the last line
    "             |||      when using :@r
    "             |||+-- Searching continues at the end of the match
    "             ||      at the cursor position
    "             ||+-- A backslash has no special meaning in mappings
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on " syntax highlighting on

" General
    set clipboard+=unnamed " share windows clipboard
    set autochdir "always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    "set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
    set wildmenu " turn on command line completion wild style
    " ignore these list file extensions
    set wildignore=*.dll,*.o,*.obj,*.exe,*.pyc,
                    \*.jpg,*.gif,*.png
    set wildmode=list:longest " turn on wild mode huge list

    " Swap file
        let s:tmp = expand('~/.vim/tmp')
        if !isdirectory(s:tmp)
            call mkdir(s:tmp,'')
        endif
        let &directory = s:tmp " directory to place swap files in
        "set backup " make backup files
        "let &backupdir=s:tmp "where to put backup files
        "set noswapfile

    " Change .viminfo name/path and should ignore it at .gitingore
        :set viminfo+=n$HOME/.vim/viminfo

    " Jump to the last position when reopening a file
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal g'\"" |
                \ endif ""'")

" Vim UI
    "set cursorcolumn " highlight the current column
    set cursorline " highlight current line
    set incsearch " BUT do highlight as you type you
                   " search phrase
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
    "set list " we do what to show tabs, to ensure we get them
              " out of my files
    set listchars=tab:>-,trail:- " show tabs and trailing
    "highlight SpecialKey ctermfg=243 " tabs highlight color
    "highlight SpecialKey guifg=DarkGray
    "set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
    "set nohlsearch " do not highlight searched for phrases
    set hlsearch " highlight searched for phrases
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    "set number " turn on line numbers
    "set numberwidth=5 " We are good up to 99999 lines
    set report=0 " tell us when anything is changed via :...
    set ruler " Always show current positions along the bottom
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set shortmess=aOstT " shortens messages to avoid
                         " 'press a key' prompt
    set showcmd " show the command being typed
    set showmatch " show matching brackets
    "set sidescrolloff=10 " Keep 5 lines at the size
    set laststatus=2 " always show the status line
    "set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current
    "              | | | | |  |   |      |  |     |       column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in
    "              | | | | |  |   |          square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer

" Text Formatting/Layout
    "let $LANG="zh_TW.UTF-8"
    set encoding=utf8
    set fileencodings=utf-8,big5,latin1,gbk,cp932,iso-2022-jp,euc-jp
    "set termencoding=utf8
    "set guifont=Monaco:h14
    "set completeopt=0 " don't use a pop up menu for completions
    set formatoptions=mtcql " m: also break at a multi-byte character
                            " t: auto-wrap text using textwidth
                            " c: auto-wrap comments using textwidth
                            " q: let gq format comments
                            " l: long lines are not formatting in insert mode
                            " r: automatically insert comment leader on return
    set wrap " wrap long line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set smartcase " if there are caps, go case-sensitive
    set expandtab " no real tabs please!
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                      " should a tab be (see expandtab)
    set smarttab " delete spaces (softtab) as tab
    set shiftwidth=4 " auto-indent amount when using cindent,
                     " >>, << and stuff like that
    set tabstop=4 " real tabs should be 8, and they will show with
                  " set list on
    "autocmd FileWritePre * :retab " affect the existing tab characters to match current settings when saving
    "autocmd BufWritePre * :retab
    autocmd BufRead,BufNewFile *.txt setlocal nonu
    autocmd FileType make setlocal noexpandtab " To turn off expandtab for editing makefiles
    "autocmd FileType python,perl filetype plugin indent on " load filetype plugins/indent settings
    " Notice! following already load in end of file
    "filetype plugin indent on " load filetype plugins/indent settings
    set cindent
    set cinoptions=l1,t0,+0,(s,j1,C1 " cindent fixed: l: case, t: function return
                                   " +: continuation line, (: unclosed parentheses,
                                   " j: java

" Folding
    set foldenable " Turn on folding
    set foldmarker={,} " Fold C style code (only use this as default
                        " if you use a high foldlevel)
    set foldmethod=marker " Fold on the marker
    set foldlevel=100 " Don't autofold anything (but I can still
                      " fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                      " open folds
    "function SimpleFoldText() "
    "    return getline(v:foldstart).' '
    "endfunction
    "set foldtext=SimpleFoldText() " Custom fold text function
                                   " (cleaner than default)

" Tab Layout
    " each tab
    highlight TabLine cterm=bold,underline ctermbg=lightgray ctermfg=black
    " select tab
    highlight TabLineSel cterm=none ctermbg=blue ctermfg=white
    " background
    "highlight TabLineFill cterm=none ctermbg=lightgray ctermfg=black
    "set showtabline=2 "always tab
    "function MyTabLine()
    "    let s = ''
    "    let t = tabpagenr()
    "    let i = 1
    "    while i <= tabpagenr('$')
    "        let buflist = tabpagebuflist(i)
    "        let winnr = tabpagewinnr(i)
    "        let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
    "        let file = bufname(buflist[winnr - 1])
    "        let file = fnamemodify(file, ':p:t')
    "        if file == ''
    "            let file = '[No Name]'
    "        endif
    "        let s .= '[%' . i . 'T' . i . ':' . file . ']'
    "        let i = i + 1
    "     endwhile
    "     let s .= '%T%#TabLineFill#%='
    "     let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
    "     return s
    "endfunction
    "set tabline=%!MyTabLine()

" User Define Functions
    " Removes trailing spaces
        function RTrailing()
            %s/\s*$//
            ''
        :endfunction
        "auto remove when saving
        "set list listchars=trail:.,extends:>
        autocmd FileWritePre * :call RTrailing()
        autocmd FileAppendPre * :call RTrailing()
        autocmd FilterWritePre * :call RTrailing()
        autocmd BufWritePre * :call RTrailing()

    " Diff file with current modify
        function! s:DiffWithSaved()
            if exists("b:diffbuf")
                unlet b:diffbuf
                bdelete diffbuf
                diffoff
            else
                let filetype=&ft
                diffthis
                vnew diffbuf| r # | normal! | ggdd
                diffthis
                exe "setlocal bt=nofile bh=wipe ro noswf ft=" . filetype
                let b:diffbuf = 1
            endif
        endfunction
        com! TDiffSaved call s:DiffWithSaved()

    " QuickFix Toggle
        function! QFToggle()
            redir => ls_output
            execute ':silent! ls'
            redir END

            let exists = match(ls_output, "Quickfix List")
            if exists == -1
                execute ':copen'
            else
                execute ':cclose'
            endif
        endfunction

" Vim 7.3 feature
    if version >= 703
        set undofile
        let &undodir=s:tmp

        "fun! s:help_rc()
        "    set conceallevel=1
        "    set concealcursor=nc
        "    set colorcolumn=+1
        "endf
        "au FileType help :call s:help_rc()
    endif

" For screen or tmux
    " tmux will send xterm-style keys when its xterm-keys option is on
    if &term =~ '^screen'
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

" For Mac
    "if has("unix")
    "    let s:uname = system("uname")
    "    if s:uname == "Darwin\n"
    "        " Do Mac stuff here
    "        let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
    "    endif
    "endif

" Mappings
    map <F2> :NERDTreeToggle<CR>
    map <F3> :TagbarToggle<CR>
    "map <F3> :TlistToggle<CR>
    map <F4> :wincmd p<CR>
    map <F5> :BufExplorer<CR>
    "map <F6> :call QFToggle()<CR>
    "map <F6> :ConqueTermTab bash<CR>
    map <F7> :call RTrailing()<CR>
    map <F8> :set list!<CR>
    map <F9> :set nu!<CR>
    map <F10> :tab ball<CR>
    map <F11> :mks! ~/.vim/tmp/session.vim<CR>
    map <F12> :source ~/.vim/tmp/session.vim<CR>
    map <leader>1 :NERDTreeToggle<CR>
    map <leader>2 :TagbarToggle<CR>
    map <leader>3 :wincmd p<CR>
    map <leader>4 :BufExplorer<CR>

    " Gtags
    nmap <leader>g :Gtags<CR>
    nmap <leader>n :cn<CR>
    nmap <leader>p :cp<CR>
    nmap <leader>s :Gtags -s<CR>
    nmap <leader>r :Gtags -r<CR>

    " Diff file with current modify
    nmap <leader>d :TDiffSaved<CR>

    " Force Save
    nmap <leader>w :w !sudo tee %<CR>

    " Switch tab
    "map <C-left> :tabprevious<CR>
    "map <C-right> :tabnext<CR>
    "map <C-up> :tabnew<CR>
    "map <C-W> :tabclose<CR>

    " Switch buffer
    map <C-left> :bprevious<CR>
    map <C-right> :bnext<CR>
    map <C-down> :bdelete<CR>

    " Switch between windows, maximizing the current window
    noremap <C-H> <C-W>h<C-W>_
    noremap <C-L> <C-W>l<C-W>_
    noremap <C-J> <C-W>j<C-W>_
    noremap <C-K> <C-W>k<C-W>_

    " Split windows
    "noremap <C-\> :vsp<CR>

    " Mouse scrolling
    noremap <MouseDown> <C-Y>
    noremap <MouseUp> <C-E>
    noremap <C-MouseDown> l
    noremap <C-MouseUp> h

    " File encodings
    map <leader>j :e ++enc=cp932<CR>

" Vundle plugin manager
    filetype off " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " Bundles source:
        " File Manager
            Bundle 'The-NERD-tree'
            Bundle 'ctrlp.vim'
            Bundle 'bufexplorer.zip'
            "Bundle 'fholgado/minibufexpl.vim'
            Bundle 'zefei/buftabs'
        " Tracing code
            "Bundle 'taglist.vim'
            Bundle 'Tagbar'
            Bundle 'gtags.vim'
            "Bundle 'cscope.vim'
            Bundle 'chazy/cscope_maps'
            Bundle 'matchit.zip'
        " Auto code completion
            " Snipmate dependency
                Bundle 'snipmate-snippets'
                Bundle 'MarcWeber/vim-addon-mw-utils'
                Bundle 'tomtom/tlib_vim'
                Bundle 'garbas/vim-snipmate'
            "Bundle 'ervandew/supertab'
            Bundle 'OmniCppComplete'
            "Bundle 'Rip-Rip/clang_complete'
            "Bundle 'http://cx4a.org/repo/gccsense.git'
            Bundle 'Townk/vim-autoclose'
            "Bundle 'pope/vim-surround'
        " Syntax
            "Bundle 'b4winckler/vim-objc'
            Bundle 'plasticboy/vim-markdown'
            "Bundle 'suan/vim-instant-markdown'
            "Bundle 'vim-pandoc/vim-pandoc'
        " Color Scheme
            Bundle 'flazz/vim-colorschemes'
            "Bundle 'rickharris/vim-blackboard'
            "Bundle 'altercation/vim-colors-solarized'
            "Bundle 'tomasr/molokai'
            "Bundle 'tpope/vim-vividchalk'
            "Bundle 'Lokaltog/vim-distinguished'
        " Others
            Bundle 'gmarik/vundle'
            Bundle 'YankRing.vim'
            "Bundle 'godlygeek/tabular'
            Bundle 'sjl/gundo.vim'
            Bundle 'terryma/vim-multiple-cursors'

    filetype plugin indent on " required!

" Plugin Settings
    "let b:match_ignorecase = 1 " case is stupid
    "let perl_extended_vars=1 " highlight advanced perl vars
                              " inside strings

    " ctags
        set tags=tags;

    " taglist
        ""let Tlist_Auto_Open = 1 " let the tag list open automagically
        ""let Tlist_Ctags_Cmd = 'ctags' " location of ctags
        "let Tlist_Compact_Format = 1 " show small menu
        "let Tlist_Inc_Winwidth = 0 " don't increase the Vim window width
        "let Tlist_Enable_Fold_Column = 0 " do not show folding tree
        "let Tlist_File_Fold_Auto_Close = 1 " fold closed other trees
        "let Tlist_Sort_Type = "name" " order by
        "let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill
        "                               " yourself
        "let Tlist_Use_Right_Window = 1 " split to the right side
        "                               " of the screen
        ""let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
        "                         " read my functions
        "" Language Specifics
        "    " just functions and classes please
        "    let tlist_aspjscript_settings = 'asp;f:function;c:class'
        "    " just functions and subs please
        "    let tlist_aspvbs_settings = 'asp;f:function;s:sub'
        "    " just functions and classes please
        "    let tlist_vb_settings = 'asp;f:function;c:class'
        "    " don't show variables in freaking php
        "    let tlist_php_settings = 'php;c:class;d:constant;f:function'

    " Tagbar
        let tagbar_width = 30 " default: 40
        "let g:tagbar_autofocus = 1 " move to the Tagbar window
        "let g:tagbar_autoshowtag = 1
        "autocmd BufEnter * nested :call tagbar#autoopen(0) " also open in the current tab
        "autocmd FileType * nested :call tagbar#autoopen(0) " open a supported file

    " bufexplorer
        let g:bufExplorerSplitBelow = 1

    " AutoClose
        autocmd FileType * :AutoCloseOff
        " Disable at startup. It's a little annoying.

    " YankRing
        let g:yankring_history_dir = '$HOME/.vim/tmp'

    " ctrlp: default bindings conflict with yankring bindings
        nnoremap <leader>p :CtrlP<CR>

    " BufTabs
        let g:buftabs_active_highlight_group="DiffAdd"
        let g:buftabs_other_components_length=20
        set statusline=\ #{buftabs}%=\ L%-5l

    " vim-colors-solarized
        set t_Co=256
        colorscheme desert
