" General
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc " don't use local version of .(g)vimrc, .exrc
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
    "set mouse=a " use mouse everywhere
    set noerrorbells " don't make noise
    set autochdir "always switch to the current file directory
    set hidden " you can change buffers without saving

" Vim UI
    set cursorline " highlight current line
    set lazyredraw " do not redraw while running macros
    set linespace=0 " don't insert any extra pixel lines
                     " betweens rows
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    "set number " turn on line numbers
    "set numberwidth=5 " We are good up to 99999 lines
    "autocmd BufRead,BufNewFile *.txt setlocal nonu
    "set completeopt=0 " don't use a pop up menu for completions
    "set sidescrolloff=10 " Keep 5 lines at the size
    set scrolloff=10 " Keep 10 lines (top/bottom) for scope
    set showmatch " show matching brackets
    "set matchtime=5 " how many tenths of a second to blink
                     " matching brackets for
    set showcmd " show the command being typed
    set ruler " Always show current positions along the bottom
    set report=0 " tell us when anything is changed via :...
    set shortmess=aOstT " shortens messages to avoid
                        " 'press a key' prompt
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
    set fileformats=unix,dos,mac " support all three, in this order
    set backspace=indent,eol,start " make backspace a more flexible
    set clipboard+=unnamed " share windows clipboard
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
    set wildmode=list:longest " turn on wild mode huge list
    set wildignore=*.o,*.obj " stuff to ignore when tab completing
    set wildignore+=*.exe,*.dll,*.pyc
    set wildignore+=*.jpg,*.gif,*.png,*DS_Store*
    set encoding=utf8
    set fileencodings=utf-8,big5,latin1,gbk,cp932,iso-2022-jp,euc-jp
    set formatoptions=mtcql " m: also break at a multi-byte character
                            " t: auto-wrap text using textwidth
                            " c: auto-wrap comments using textwidth
                            " q: let gq format comments
                            " l: long lines are not formatting in insert mode
                            " r: automatically insert comment leader on return
    set wrap " wrap long line
    "set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
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
    "set list " show tabs and trailing
    set listchars=trail:¬,tab:→· " define tabs and trailing chars
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set expandtab " no real tabs please!
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                      " should a tab be (see expandtab)
    set smarttab " delete spaces (softtab) as tab
    set tabstop=4 " real tabs should be 8, and they will show with
                  " set list on
    set shiftwidth=4 " auto-indent amount when using cindent,
                     " >>, << and stuff like that
    "autocmd FileWritePre * :retab " affect the existing tab characters
                                   " to match current settings when saving
    "autocmd BufWritePre * :retab
    autocmd FileType make setlocal noexpandtab " To turn off expandtab for editing makefiles
    set cindent
    set cinoptions=l1,t0,+0,(s,j1,C1 " cindent fixed: l: case, t: function return
                                     " +: continuation line, (: unclosed parentheses,
                                     " j: java
    " Notice! Following have been loaded in vundles.vim
        "filetype plugin indent on " load filetype plugins/indent settings
        "autocmd FileType python,perl filetype plugin indent on

" Searching
    set hlsearch " highlight searched for phrases
    set incsearch " do highlight as you type you search phrase
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set smartcase " if there are caps, go case-sensitive

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

" Screen fixing
    " tmux will send xterm-style keys when its xterm-keys option is on
    if &term=~'^screen'
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

" Relative paths
    let s:configdir=expand('~/.vim')
    if !isdirectory(s:configdir)
        call mkdir(s:configdir,'')
    endif
    let g:tempdir=expand('~/.vim/tmp')
    if !isdirectory(g:tempdir)
        call mkdir(g:tempdir,'')
    endif
    " Turn off swap files
        set noswapfile
        set nobackup
        set nowb
        "let &backupdir=g:tempdir " directory to put backup files
        "let &directory=g:tempdir " directory to place swap files in
    " History file
        set viminfo+=n$HOME/.vim/tmp/viminfo
    " Jump to the last position when reopening a file
        autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \ exe "normal g'\"" |
                \ endif ""'")
    " Vim 7.3 feature: infinite undo
        if version >= 703
            set undofile
            let &undodir=g:tempdir
        endif

" User defined functions
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
                let b:diffbuf=1
            endif
        endfunction
        com! TDiffSaved call s:DiffWithSaved()
    " QuickFix Toggle
        function! QFToggle()
            redir => ls_output
            execute ':silent! ls'
            redir END

            let exists=match(ls_output, "Quickfix List")
            if exists == -1
                execute ':copen'
            else
                execute ':cclose'
            endif
        endfunction

" Keymap
    " Normal Mappings
        map <F2> :NERDTreeToggle<CR>
        map <F3> :TagbarToggle<CR>
        map <F4> :wincmd p<CR>
        map <F5> :BufExplorer<CR>
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
        noremap <C-\> :vsp<CR>
    " Mouse scrolling
        noremap <MouseDown> <C-Y>
        noremap <MouseUp> <C-E>
        noremap <C-MouseDown> l
        noremap <C-MouseUp> h
    " File encodings to JP
        map <leader>j :e ++enc=cp932<CR>
    " Force line ending conversion
        noremap <leader>u :set ff=unix<CR>
        noremap <leader>d :set ff=dos<CR>

" Use Vundle plugin to manage all other plugins
    filetype off " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " File Manager
        Bundle 'The-NERD-tree'
        Bundle 'ctrlp.vim'
        Bundle 'bufexplorer.zip'
        Bundle 'zefei/buftabs'
    " Tracing code
        Bundle 'Tagbar'
        Bundle 'gtags.vim'
        Bundle 'chazy/cscope_maps'
        Bundle 'matchit.zip'
        "Bundle 'taglist.vim'
    " Auto code completion
        " Snipmate dependency
            Bundle 'snipmate-snippets'
            Bundle 'MarcWeber/vim-addon-mw-utils'
            Bundle 'tomtom/tlib_vim'
            Bundle 'garbas/vim-snipmate'
        Bundle 'OmniCppComplete'
        Bundle 'Townk/vim-autoclose'
        "Bundle 'ervandew/supertab'
        "Bundle 'Rip-Rip/clang_complete'
        "Bundle 'http://cx4a.org/repo/gccsense.git'
        "Bundle 'pope/vim-surround'
    " Syntax
        Bundle 'plasticboy/vim-markdown'
        "Bundle 'suan/vim-instant-markdown'
        "Bundle 'vim-pandoc/vim-pandoc'
        "Bundle 'b4winckler/vim-objc'
    " Color Scheme
        Bundle 'flazz/vim-colorschemes'
        "Bundle 'altercation/vim-colors-solarized'
        "Bundle 'rickharris/vim-blackboard'
        "Bundle 'tomasr/molokai'
    " Others
        Bundle 'gmarik/vundle'
        Bundle 'YankRing.vim'
        Bundle 'sjl/gundo.vim'
        Bundle 'terryma/vim-multiple-cursors'
    filetype plugin indent on " required!

" Plugin Settings
    " Ctags
        set tags=tags;
    " Tagbar
        let tagbar_width=30 " default: 40
    " Bufexplorer
        let g:bufExplorerSplitBelow=1
    " AutoClose
        autocmd FileType * :AutoCloseOff
        " Disable at startup. It's a little annoying.
    " YankRing
        let g:yankring_history_dir=g:tempdir
    " Ctrlp: default bindings conflict with yankring bindings
        nnoremap <leader>p :CtrlP<CR>
    " BufTabs
        let g:buftabs_active_highlight_group="DiffAdd"
        let g:buftabs_other_components_length=20
        set statusline=\ #{buftabs}%=%{&ff!='unix'?'['.&ff.']':''}\ L%-5l
    " Vim-colors-solarized
        set t_Co=256
        colorscheme desert

