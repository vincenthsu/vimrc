" General
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc       " don't use local version of .(g)vimrc, .exrc
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
    syntax on        " syntax highlighting on
    "set mouse=a     " use mouse everywhere
    set noerrorbells " don't make noise
    set autochdir    " always switch to the current file directory
    set hidden       " you can change buffers without saving
    set sessionoptions=buffers,curdir,folds,tabpages " customize what to save

" Vim UI
    "set cursorline       " highlight current line
    set lazyredraw        " do not redraw while running macros
    set linespace=0       " don't insert any extra pixel lines
                          " betweens rows
    set nostartofline     " leave my cursor where it was
    set novisualbell      " don't blink
    "set number           " turn on line numbers
    "set numberwidth=5    " We are good up to 99999 lines
    "autocmd BufRead,BufNewFile *.txt setlocal nonu
    "set completeopt=0    " don't use a pop up menu for completions
    "set sidescrolloff=10 " Keep 5 lines at the size
    set scrolloff=10      " Keep 10 lines (top/bottom) for scope
    set showmatch " show matching brackets
    "set matchtime=5      " how many tenths of a second to blink
                          " matching brackets for
    set showcmd           " show the command being typed
    set ruler             " Always show current positions along the bottom
    set report=0          " tell us when anything is changed via :...
    set shortmess=aOstT   " shortens messages to avoid
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
    set fileformats=unix,dos,mac   " support all three, in this order
    set backspace=indent,eol,start " make backspace a more flexible
    set clipboard+=unnamed         " share windows clipboard
    set iskeyword+=_,$,@,%,#       " none of these are word dividers
    set wildmenu                   " enable ctrl-n and ctrl-p to scroll thru matches
    set wildmode=list:longest      " turn on wild mode huge list
    set wildignore+=*.o,*.obj      " stuff to ignore when tab completing
    set wildignore+=*.exe,*.dll,*.pyc
    set wildignore+=*.jpg,*.gif,*.png,*DS_Store*
    set wildignore+=*.bin,*.so,*.swp,*.zip
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
    set listchars=trail:¬,tab:▸- " define tabs and trailing chars
    set shiftround    " when at 3 spaces, and I hit > ... go to 4, not 5
    set smarttab      " delete spaces (softtab) as tab
    set expandtab     " no real tabs please!
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                      " should a tab be (see expandtab)
    set tabstop=4     " real tabs should be 8, and they will show with
                      " set list on
    set shiftwidth=4  " auto-indent amount when using cindent,
                      " >>, << and stuff like that
    "autocmd FileWritePre * :retab " affect the existing tab characters
                                   " to match current settings when saving
    "autocmd BufWritePre * :retab
    autocmd FileType make setlocal noexpandtab " To turn off expandtab for
                                               " editing makefiles
    set smartindent  " like autoindent but also recognizes some C syntax
    set cindent      " automatic C program indenting
    set cinoptions=:0,l1,t0,g0 " cindent for kernel style:
                               " :: switch, l: case
                               " t: function return, g: C++ scope
                               " +: continuation line
                               " j: java, J: javascript
                               " N for chars, or Ns for shifts
    " Notice! Following have been loaded in vundles.vim
        "filetype plugin indent on " load filetype plugins/indent settings
        "autocmd FileType python,perl filetype plugin indent on

" Searching
    set hlsearch   " highlight searched for phrases
    set incsearch  " do highlight as you type you search phrase
    set ignorecase " case insensitive by default
    set infercase  " case inferred by default
    set smartcase  " if there are caps, go case-sensitive

" Folding
    set foldenable        " Turn on folding
    set foldmarker={,}    " Fold C style code (only use this as default
                          " if you use a high foldlevel)
    set foldmethod=marker " Fold on the marker
    set foldlevel=100     " Don't autofold anything (but I can still
                          " fold manually)
    set foldopen=block,hor,mark,percent,quickfix,tag " what movements
                                                     " open folds
    "function SimpleFoldText() "
    "    return getline(v:foldstart).' '
    "endfunction
    "set foldtext=SimpleFoldText() " Custom fold text function
                                   " (cleaner than default)

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
        set viminfo+=n$HOME/.vim/tmp/viminfo.txt
    " Jump to the last position when reopening a file
        autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \   execute "normal g'\"" |
            \ endif ""'")
    " Vim 7.3 feature: infinite undo
        if version >= 703
            set undofile
            let &undodir=g:tempdir
        endif

" Screen fixing
    " tmux will send xterm-style keys when its xterm-keys option is on
    if &term=~'^screen'
        execute "set <xUp>=\e[1;*A"
        execute "set <xDown>=\e[1;*B"
        execute "set <xRight>=\e[1;*C"
        execute "set <xLeft>=\e[1;*D"
    endif

" Bracketed paste mode
    if &term =~ "xterm.*" || &term =~ "screen-256color"
        let &t_ti = &t_ti . "\e[?2004h"
        let &t_te = "\e[?2004l" . &t_te
        function XTermPasteBegin(ret)
            set pastetoggle=<Esc>[201~
            set paste
            return a:ret
        endfunction
        map <expr> <Esc>[200~ XTermPasteBegin("i")
        imap <expr> <Esc>[200~ XTermPasteBegin("")
        cmap <Esc>[200~ <nop>
        cmap <Esc>[201~ <nop>
    endif

" Start in insert mode for commit
    autocmd FileType gitcommit execute KernelMode() |
        \ execute "normal! O" | startinsert

" User-defined functions
    " Open NERDTree in current dir
        function! NTToggle()
            "" Check if NERDTree is open
            if exists("t:NERDTreeBufName")
                let s:ntree = bufwinnr(t:NERDTreeBufName)
            else
                let s:ntree = -1
            endif
            if (s:ntree != -1)
                "" If NERDTree is open, close it.
                :NERDTreeClose
            else
                "" Open NERDTree in the file path
                :NERDTreeFind
            endif
        endfunction
    " Removes trailing spaces
        function RTrailing()
            %s/\s*$//
            ''
        :endfunction
        " Auto remove when saving
        "autocmd FileWritePre * :call RTrailing()
        "autocmd FileAppendPre * :call RTrailing()
        "autocmd FilterWritePre * :call RTrailing()
        "autocmd BufWritePre * :call RTrailing()
    " Diff file with current modify
        function! DiffWithSaved()
            if exists("b:diffbuf")
                unlet b:diffbuf
                bdelete diffbuf
                diffoff
            else
                let filetype=&ft
                diffthis
                vnew diffbuf| r # | normal! | ggdd
                diffthis
                execute "setlocal bt=nofile bh=wipe ro noswf ft=" . filetype
                let b:diffbuf=1
            endif
        endfunction
        command! DiffSaved call DiffWithSaved()
    " A mapping to make a backup session of the current file.
        function! WriteSession()
            let l:fname=strftime('%Y%m%d-%H%M%S') . '_' . expand('%:t')
            silent execute 'SaveSession! ' . l:fname
            echomsg 'Saved Session: ' . l:fname
        endfunction
        command! NewSession call WriteSession()
    " Set encoding
        function! SetEncoding()
            echomsg "Set line encoding to: 1)unix, 2)dos, 3)mac,"
            echomsg "Set file encoding to: 4)utf-8, 5)big5, 6)latin1,
                \ 7)gbk, 8)JIS."
            let en=input('? ')
            if en==1
                execute ':set ff=unix'
            endif
            if en==2
                execute ':set ff=dos'
            endif
            if en==3
                execute ':set ff=mac'
            endif
            if en==4
                execute ':e ++enc=utf-8'
            endif
            if en==5
                execute ':e ++enc=big5'
            endif
            if en==6
                execute ':e ++enc=latin1'
            endif
            if en==7
                execute ':e ++enc=gbk'
            endif
            if en==8
                execute ':e ++enc=cp932'
            endif
        endfunction
    " Quickly change layouts
        function! ReadMode()
            set nolist         " show tabs and trailing
            set noexpandtab    " use real tabs
            set softtabstop=4  " when hitting tab or backspace, how many spaces
                               " should a tab be (see expandtab)
            set tabstop=4      " real tabs should be 8, and they will show with
                               " set list on
            set shiftwidth=4   " auto-indent amount when using cindent,
                               " >>, << and stuff like that
            set colorcolumn=
            set nonumber
        endfunction
        function! EditMode()
            set list           " show tabs and trailing
            set expandtab      " no real tabs please!
            set softtabstop=4  " when hitting tab or backspace, how many spaces
                               " should a tab be (see expandtab)
            set tabstop=4      " real tabs should be 8, and they will show with
                               " set list on
            set shiftwidth=4   " auto-indent amount when using cindent,
                               " >>, << and stuff like that
            set colorcolumn=80
            set number
        endfunction
        function! KernelMode()
            set list           " show tabs and trailing
            set noexpandtab    " use real tabs
            set softtabstop=8  " when hitting tab or backspace, how many spaces
                               " should a tab be (see expandtab)
            set tabstop=8      " real tabs should be 8, and they will show with
                               " set list on
            set shiftwidth=8   " auto-indent amount when using cindent,
                               " >>, << and stuff like that
            set colorcolumn=80
            set number
        endfunction

" Keymap
    " Hotkeys
        noremap <F1> :call NTToggle()<CR>
        noremap <F2> :TagbarToggle<CR>
        noremap <F3> :MBEToggle<CR>
        set pastetoggle=<F4>
        noremap <F5> :SaveSession!<CR>
        noremap <F6> :NewSession<CR>
        noremap <F7> :OpenSession!<CR>
        noremap <F8> :DeleteSession<CR>
        noremap <F9> :CtrlSF<Space>
        noremap <F10> :call SetEncoding()<CR>
        noremap <F11> :retab<CR> :call RTrailing()<CR>
        noremap <F12> :help_hotkeys<CR>
    " Unbind the C-S, C-X for other usages
        "noremap <C-S> <NOP> " handle by Emmet
        noremap <C-X> <NOP>
        " obtain/pull difference
        noremap <C-X>. do
        noremap <C-X>, dp
        noremap <C-X>> do
        noremap <C-X>< dp
        noremap <C-X>] ]c
        noremap <C-X>[ [c
        " number add/sub 1
        noremap <C-X>= <C-A>
        noremap <C-X>+ <C-A>
        noremap <C-X>- <C-X>
        noremap <C-X>_ <C-X>
    " Switch buffers
        noremap <C-left> :MBEbp<CR>
        noremap <C-right> :MBEbn<CR>
        noremap <C-up> :BufExplorer<CR>
        noremap <C-down> :MBEbd<CR>
        noremap <C-X><left> :MBEbp<CR>
        noremap <C-X><right> :MBEbn<CR>
        noremap <C-X><up> :BufExplorer<CR>
        noremap <C-X><down> :MBEbd<CR>
        noremap <leader><left> :MBEbp<CR>
        noremap <leader><right> :MBEbn<CR>
        noremap <leader><up> :BufExplorer<CR>
        noremap <leader><down> :MBEbd<CR>
    " Switch between windows
        noremap <C-H> <C-W>h
        noremap <C-L> <C-W>l
        noremap <C-J> <C-W>j
        noremap <C-K> <C-W>k
    " Split windows
        nnoremap <C-\> :vsp<CR>
        nnoremap <C-_> :sp<CR>
    " Split windows size
        noremap <C-W>+ :resize +10<CR>
        noremap <C-W>- :resize -10<CR>
        noremap <C-W>> :vertical resize +10<CR>
        noremap <C-W>< :vertical resize -10<CR>
        noremap <C-W>. :vertical resize +20<CR>
        noremap <C-W>, :vertical resize -20<CR>
    " Set line/file encodings
        noremap <leader>e :call SetEncoding()<CR>
    " Force save the file by sudo privieges
        noremap <leader>w :w !sudo tee %<CR>
    " Switch indent modes
        noremap <leader>1 :call ReadMode()<CR>
        noremap <leader>2 :call EditMode()<CR>
        noremap <leader>3 :call KernelMode()<CR>
    " Rebind the vim help file
        inoremap <F1> <ESC> :NERDTreeToggle <CR>
        noremap <leader>0 :help<CR>
        noremap <leader>9 :help_hotkeys<CR>
    " Gen help docs
        noremap <leader>8 :helptags ~/.vim/doc<CR>
    " Diff file with current modify
        noremap <leader>d :DiffSaved<CR>
        noremap <leader>7 :DiffSaved<CR>
    " Plugin: SignifyToggle
        noremap <leader>4 :SignifyToggle<CR>
    " Plugin: Gitv
        noremap <leader>5 :Gitv<CR>
    " Plugin: Gundo
        noremap <leader>6 :GundoToggle<CR>
    " Plugin: Gtags
        noremap <leader>g :Gtags<CR>
        noremap <leader>s :Gtags -s<CR>
        noremap <leader>r :Gtags -r<CR>
        noremap <leader>z :cp<CR>
        noremap <leader>x :cn<CR>
    " Plugin: Ctrlp
        " default bindings conflict with yankring bindings
        noremap <leader>p :CtrlPMixed<CR>
    " Plugin: vim-session
        noremap <C-X>s :SaveSession!
        noremap <C-X>n :NewSession<CR>
        noremap <C-X>o :OpenSession!<CR>
        noremap <C-X>d :DeleteSession<CR>
    " Plugin: Emmet
        let g:user_emmet_expandabbr_key = '<C-S>'
    " Plugin: Tabular
        nmap <Leader>a= :Tabularize /=<CR>
        vmap <Leader>a= :Tabularize /=<CR>
        nmap <Leader>a: :Tabularize /:\zs<CR>
        vmap <Leader>a: :Tabularize /:\zs<CR>
    " Plugin: YouCompleteMe
        "noremap <leader>j :YcmCompleter GoTo<CR>

" Use Vundle plugin to manage all other plugins
    filetype off " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " File Manager
        Plugin 'The-NERD-tree'
        Plugin 'bufexplorer.zip'
        Plugin 'fholgado/minibufexpl.vim'
        Plugin 'xolox/vim-session'
        Plugin 'xolox/vim-misc'
        Plugin 'ctrlpvim/ctrlp.vim'
        "    Plugin 'JazzCore/ctrlp-cmatcher'
        "Plugin 'zefei/buftabs'
        "Plugin 'mihaifm/bufstop'
        "Plugin 'jistr/vim-nerdtree-tabs'
    " Tracing code
        Plugin 'Tagbar'
        Plugin 'gtags.vim'
        Plugin 'chazy/cscope_maps'
        Plugin 'matchit.zip'
        Plugin 'mileszs/ack.vim'
            Plugin 'dyng/ctrlsf.vim'
        "Plugin 'ggreer/the_silver_searcher'
        "Plugin 'rking/ag.vim'
        "Plugin 'scrooloose/syntastic'
        "Plugin 'taglist.vim'
    " Auto code completion
        Plugin 'OmniCppComplete'
        Plugin 'ervandew/supertab'
        Plugin 'Raimondi/delimitMate'
        Plugin 'mattn/emmet-vim'
        Plugin 'SirVer/ultisnips'
            Plugin 'vincenthsu/vim-snippets'
        "    Plugin 'honza/vim-snippets'
        "Plugin 'Valloric/YouCompleteMe'
        "Plugin 'marijnh/tern_for_vim'
        "Plugin 'Shougo/neocomplete.vim'
        "Plugin 'gregsexton/MatchTag'
    " Editing
        Plugin 'YankRing.vim'
        Plugin 'sjl/gundo.vim'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-repeat'
        Plugin 'tpope/vim-commentary'
        Plugin 'jayflo/vim-skip'
        Plugin 'terryma/vim-multiple-cursors'
            Plugin 'terryma/vim-expand-region'
        Plugin 'godlygeek/tabular'
    " Syntaxes & colors
        Plugin 'flazz/vim-colorschemes'
        Plugin 'bling/vim-airline'
        Plugin 'tpope/vim-markdown'
        "Plugin 'plasticboy/vim-markdown'
        "Plugin 'pangloss/vim-javascript'
        "Plugin 'tpope/vim-git'
    " Version control
        Plugin 'tpope/vim-fugitive'
        Plugin 'mhinz/vim-signify'
        Plugin 'gregsexton/gitv'
        "Plugin 'airblade/vim-gitgutter'
    " Others
        Plugin 'gmarik/vundle'
        Plugin 'mattn/webapi-vim'
        Plugin 'mattn/gist-vim'
        Plugin 'LargeFile'
        Plugin 'MattesGroeger/vim-bookmarks'
        "Plugin 'starleoda/vim-vookmark'
    "filetype plugin on " required!
    filetype plugin indent on " load filetype plugins/indent settings

" Plugin Settings
    " Ctags
        set tags=tags;
    " NerdTree
        let NERDTreeBookmarksFile=expand("$HOME/.vim/tmp/nerdtree_bookmarks.txt")
    " Tagbar
        let tagbar_width=30 " default: 40
        let g:tagbar_type_css = {
            \ 'ctagstype' : 'Css',
            \ 'kinds'     : [
                \ 'c:classes',
                \ 's:selectors',
                \ 'i:identities'
            \ ]
        \ }
    " YankRing
        let g:yankring_history_dir=g:tempdir
    " Ctrlp
        let g:ctrlp_working_path_mode='ra'
        let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
        let g:ctrlp_follow_symlinks=1
        let g:ctrlp_user_command={
            \ 'types': {
                \ 1: ['.git', 'cd %s && git ls-files'],
                \ 2: ['.hg', 'hg --cwd %s locate -I .'],
            \ },
            \ 'fallback': 'find %s -type f'
        \ }
    " vim-session
        set sessionoptions-=help
        let g:session_directory='~/.vim/tmp/sessions'
        let g:session_autoload='yes'
        let g:session_autosave='no'
        let g:session_default_to_last=1
        let g:session_default_overwrite=1
        let g:session_command_aliases=1
        let g:session_persist_colors=0
    " vim-airline
        let g:airline_powerline_fonts=0
        let g:airline_left_sep=''
        let g:airline_right_sep=''
        "let g:airline_section_x='%{getcwd()}'
        let g:airline_section_z='%l/%L'
    " vim-signify
        let g:signify_disable_by_default=1
    " vim-markdown
        let g:vim_markdown_folding_disabled=1
    " Gist-vim
        let g:gist_show_privates=1
        let g:gist_post_private=1
    " Minibufexpl
        let g:miniBufExplCycleArround=1
    " UltiSnips
        let g:UltiSnipsExpandTrigger="<Tab>"
        let g:UltiSnipsJumpForwardTrigger="<Tab>"
        let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
    " vim-bookmark
        let g:bookmark_auto_save_file = $HOME.'/.vim/tmp/bookmarks'
        let g:bookmark_auto_close = 1
    " vim-vookmark
        "let g:vookmark_savepath=$HOME.'/.vim/tmp/bookmarks'
    " YouCompleteMe
        "let g:ycm_show_diagnostics_ui=0
        "let g:ycm_key_list_select_completion=['<Down>']
        "let g:ycm_key_list_previous_completion=['<Up>']
        "let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
        "let g:ycm_confirm_extra_conf=0
        "let g:ycm_collect_identifiers_from_tags_files=1
        "" :h filetype - vim filetypes
        "" :set ft? - get the filetype of the current file
        "let g:ycm_filetype_blacklist = {
        "    \ 'nerdtree' : 1,
        "    \ 'tagbar' : 1,
        "    \ 'minibufexpl' : 1,
        "    \ 'gundo' : 1,
        "    \ 'vundle' : 1,
        "    \ 'qf' : 1,
        "    \ 'notes' : 1,
        "    \ 'markdown' : 1,
        "    \ 'mkd' : 1,
        "    \ 'unite' : 1,
        "    \ 'text' : 1,
        "    \ 'vimwiki' : 1,
        "    \ 'gitcommit' : 1,
        "\ }
        ""let g:ycm_filetype_whitelist = {
        ""    \ 'c': 1,
        ""    \ 'cpp': 1,
        ""    \ 'sh': 1,
        ""    \ 'java': 1,
        ""    \ 'python': 1,
        ""    \ 'ruby': 1,
        ""\ }

" Color Theme: sequence-related
    " Enable xterm 256 color
        set t_Co=256
    " Plugin: vim-colorschemes
        colorscheme blackboard
    " Plugin: BufTabs
        highlight BufTabs term=standout ctermbg=4 ctermfg=7
        let g:buftabs_active_highlight_group="BufTabs"
    " Popup menu
        highlight Pmenu ctermbg=234 ctermfg=7
        highlight PmenuSel ctermbg=8 ctermfg=7
    " Tabs and trailing
        highlight SpecialKey ctermfg=236 ctermbg=0
