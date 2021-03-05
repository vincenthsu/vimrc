" Configurable variables (defined in ~/.vimrc.inc)
    "let g:powerline_fonts = 1
    "let g:cpp_developer = 1
    "let g:web_developer = 1

" General
    set nocompatible " explicitly get out of vi-compatible mode
    set noexrc       " don't use local version of .(g)vimrc, .exrc
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
    set showmatch         " show matching brackets
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
    set clipboard=unnamed          " share windows clipboard
    set iskeyword+=_,$,@,%,#       " none of these are word dividers
    set wildmenu                   " enable ctrl-n and ctrl-p to scroll thru matches
    set wildmode=list:longest      " turn on wild mode huge list
    set wildignore+=*.o,*.obj      " stuff to ignore when tab completing
    set wildignore+=*.exe,*.dll,*.pyc
    set wildignore+=*.jpg,*.gif,*.png,*DS_Store*
    set wildignore+=*.bin,*.so,*.swp,*.zip
    set encoding=utf8
    set fileencodings=utf-8,ucs-bom,big5,gbk,cp932,iso-2022-jp,euc-jp,latin1
    set formatoptions=tcqlron   " m: also break at a multi-byte character
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
    set nolist        " show tabs and trailing
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
    set cinoptions=:0,l1,t0,g0,+s,(s,p0 " set cindent default style.
    " Notice! the following will be setted later
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
                \ execute "normal g'\"" |
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
                ":NERDTreeTabsClose
                :NERDTreeClose
            else
                "" Open NERDTree in the file path
                ":NERDTreeTabsOpen
                :NERDTreeFind
            endif
        endfunction
    " Toggle mouse
        function! MouseToggle()
            " check if mouse is enabled
            if &mouse == 'a'
                " disable mouse
                set mouse=
            else
                " enable mouse everywhere
                set mouse=a
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
                let filetype = &ft
                diffthis
                vnew diffbuf| r # | normal! | ggdd
                diffthis
                execute "setlocal bt=nofile bh=wipe ro noswf ft=" . filetype
                let b:diffbuf = 1
            endif
        endfunction
        command! DiffSaved call DiffWithSaved()
    " A mapping to make a backup session of the current file.
        function! WriteSession()
            let l:fname = strftime('%Y-%m-%d.%H-%M-%S') . '_' . expand('%:t')
            silent execute 'SaveSession! ' . l:fname
            echomsg 'Saved Session: ' . l:fname
        endfunction
        command! NewSession call WriteSession()
    " Set encoding
        function! SetEncoding()
            echomsg "Set line encoding to: 1)unix, 2)dos, 3)mac,"
            echomsg "Set file encoding to: 4)utf-8, 5)ucs-bom, 6)latin1,
                        \ 7)big5, 8)gbk, 9)jis."
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
                execute ':e ++enc=ucs-bom'
            endif
            if en==6
                execute ':e ++enc=latin1'
            endif
            if en==7
                execute ':e ++enc=big5'
            endif
            if en==8
                execute ':e ++enc=gbk'
            endif
            if en==9
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
            set cinoptions=:0,l1,t0,g0
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
            set cinoptions=:0,l1,t0,g0
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
            set cinoptions=:0,l1,t0,g0,(0
            set colorcolumn=80
            set number
        endfunction

" Keymap
    " Hotkeys
        noremap <F1> :call NTToggle()<CR>
        noremap <F2> :TagbarToggle<CR>
        noremap <F3> :UndotreeToggle<CR>
        noremap <F4> :ClangFormatAutoToggle<CR>
        noremap <F5> :SaveSession!<CR>
        noremap <F6> :NewSession<CR>
        noremap <F7> :OpenSession!<CR>
        noremap <F8> :DeleteSession<CR>
        noremap <F9> :call MouseToggle()<CR>
        noremap <F10> :retab<CR> :call RTrailing()<CR>
        noremap <F11> :call SetEncoding()<CR>
        noremap <F12> :help_hotkeys<CR>
    " Unbind the C-S, C-X for other usages
        "noremap <C-S> <NOP> " handle by emmet
        noremap <C-X> <NOP>
        " obtain/pull difference
        noremap <C-X>. do
        noremap <C-X>, dp
        noremap <C-X>> do
        noremap <C-X>< dp
        " number add/sub 1
        noremap <C-X>= <C-A>
        noremap <C-X>+ <C-A>
        noremap <C-X>- <C-X>
        noremap <C-X>_ <C-X>
    " Switch buffers
        noremap <C-left> :bp<CR>
        noremap <C-right> :bn<CR>
        noremap <C-up> :BufExplorer<CR>
        noremap <C-down> :bd<CR>
    " Switch between windows
        noremap <C-H> <C-W>h
        noremap <C-J> <C-W>j
        noremap <C-K> <C-W>k
        noremap <C-L> <C-W>l
    " Split windows
        nnoremap <C-\> :vsp<CR>
        nnoremap <C-_> :sp<CR>
    " Split windows size
        noremap <C-W>+ :resize +10<CR>
        noremap <C-W>- :resize -10<CR>
        noremap <C-W>= :vertical resize +10<CR>
        noremap <C-W>- :vertical resize -10<CR>
    " Go to middle of line in vim
        noremap gm :call cursor(0, len(getline('.'))/2)<CR>
    " Diff file with current modify
        noremap <leader>d :DiffSaved<CR>
    " Force save the file by sudo privieges
        noremap <leader>w :w !sudo tee %<CR>
    " Switch indent modes
        noremap <leader>1 :call ReadMode()<CR>
        noremap <leader>2 :call EditMode()<CR>
        noremap <leader>3 :call KernelMode()<CR>
    " Gen help docs
        noremap <leader>9 :helptags ~/.vim/doc<CR>
    " Rebind the vim help file
        inoremap <F1> <ESC> :call NTToggle()<CR>
        noremap <leader>0 :help<CR>
    " Plugin: vim-signify
        noremap <leader>4 :SignifyToggle<CR>
    " Plugin: gitv
        noremap <leader>5 :Gitv<CR>
    " Plugin: gtags.vim
        noremap <leader>g :Gtags<CR>
        noremap <leader>s :Gtags -s<CR>
        noremap <leader>r :Gtags -r<CR>
        noremap <leader>z :cp<CR>
        noremap <leader>x :cn<CR>
        noremap <leader>q :cclose<CR>
    " Plugin: fzf
        noremap <leader>p :FZF<space>
    " Plugin: vim-clang-format
        noremap <leader>f :ClangFormat<CR>
    " Plugin: vim-bookmarks
        noremap <leader>b :BookmarkShowAll<CR>
    " Plugin: vim-visual-star-search
        nnoremap * *<c-o>
        noremap <leader>h :%s///g<left><left>
    " Plugin: YCM-Generator
        noremap <leader>y :YcmGenerateConfig<CR>

" Use vim-plug to manage all other plugins
    call plug#begin('~/.vim/plugged')
    " File navigation
        Plug 'scrooloose/nerdtree'
        Plug 'jlanzarotta/bufexplorer'
        Plug 'xolox/vim-session'
            Plug 'xolox/vim-misc'
        Plug 'junegunn/fzf.vim'
            Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
        "Plug 'ctrlpvim/ctrlp.vim'
        "   Plug 'FelikZ/ctrlp-py-matcher'
        "Plug 'fholgado/minibufexpl.vim'
        "Plug 'ap/vim-buftabline'
        "Plug 'zefei/vim-wintabs'
    " Tracing code
        Plug 'majutsushi/tagbar'
        Plug 'vim-scripts/gtags.vim'
        Plug 'vim-scripts/matchit.zip'
        Plug 'vim-scripts/a.vim', { 'on': 'A' }
        Plug 'MattesGroeger/vim-bookmarks'
        Plug 'dkprice/vim-easygrep'
        Plug 'fatih/vim-go', { 'for': 'go' }
        "Plug 'ludovicchabant/vim-gutentags',
        "Plug 'mileszs/ack.vim'
        "Plug 'dyng/ctrlsf.vim', { 'on': 'CtrlSF' }
        "Plug 'kshenoy/vim-signature'
    " Auto code completion
        if exists("g:cpp_developer") && g:cpp_developer == 1
            Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --all' }
                Plug 'rdnetto/YCM-Generator', { 'branch': 'stable', 'on': 'YcmGenerateConfig' }
        else
            Plug 'OmniCppComplete'
            Plug 'ervandew/supertab'
        endif
        if exists("g:web_developer") && g:web_developer == 1
            Plug 'mattn/emmet-vim'
        endif
        Plug 'Raimondi/delimitMate'
        Plug 'SirVer/ultisnips'
            Plug 'vincenthsu/vim-snippets', { 'branch': 'extension'}
        Plug 'nsf/gocode', { 'for': 'go' }
        "    Plug 'honza/vim-snippets'
        "Plug 'justmao945/vim-clang'
        "Plug 'marijnh/tern_for_vim', { 'for': 'javascipt' }
    " Editing
        Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
        Plug 'tpope/vim-commentary'
        Plug 'tpope/vim-repeat'
        Plug 'tpope/vim-surround'
        Plug 'tpope/vim-abolish'
        Plug 'jayflo/vim-skip'
        Plug 'terryma/vim-multiple-cursors'
            Plug 'terryma/vim-expand-region'
        Plug 'svermeulen/vim-easyclip' " Only enable a default mapping if it hasn't already been mapped to something
        "Plug 'sjl/gundo.vim'
        "Plug 'YankRing.vim'
        "Plug 'godlygeek/tabular'
        "Plug 'tomtom/tcomment_vim'
    " Formatting
        Plug 'junegunn/vim-easy-align'
        Plug 'rhysd/vim-clang-format'
        "Plug 'editorconfig/editorconfig-vim'
    " Syntaxes & colors
        Plug 'vim-airline/vim-airline'
        Plug 'sheerun/vim-polyglot'
        Plug 'chrisbra/vim-diff-enhanced'
        Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
        "Plug 'vim-airline/vim-airline-themes'
        "Plug 'itchyny/lightline.vim'
        "Plug 'flazz/vim-colorschemes'
    " Version control
        Plug 'mhinz/vim-signify'
        Plug 'gregsexton/gitv', { 'on': 'Gitv' }
            Plug 'tpope/vim-fugitive'
        "Plug 'airblade/vim-gitgutter'
        "Plug 'bartman/git-wip', { 'rtp': 'vim/' }
    " Others
        Plug 'vim-scripts/Conque-GDB', { 'on': ['ConqueGdb', 'ConqueGdbVSplit'] }
        Plug 'vim-scripts/LargeFile'
        Plug 'mattn/gist-vim', { 'on': 'Gist' }
            Plug 'mattn/webapi-vim', { 'on': 'Gist' }
    call plug#end()
    filetype plugin indent on

" Plugin Settings
    " Ctags
        set tags=tags;
    " ack.vim
        if executable('ag')
            let g:ackprg = 'ag --vimgrep'
        endif
    " ConqueGdb
        let g:ConqueGdb_Leader = '<C-X>'
        let g:ConqueTerm_Color = 2
        let g:ConqueTerm_CloseOnEnd = 1
        let g:ConqueTerm_StartMessages = 0
    " Emmet (Zen Coding)
        if exists("g:web_developer") && g:web_developer == 1
            let g:user_emmet_expandabbr_key = '<C-S>'
        else
            noremap <C-S> <NOP>
        end
    " gist-vim
        let g:gist_detect_filetype = 1
        let g:gist_post_private = 1
        let g:gist_show_privates = 1
    " Minibufexpl
        let g:miniBufExplCycleArround = 1
        let g:miniBufExplorerAutoStart = 0
        let g:miniBufExplHideWhenDiff = 1
        let g:miniBufExplBuffersNeeded = 0
    " NerdTree
        let NERDTreeBookmarksFile = expand("$HOME/.vim/tmp/nerdtree_bookmarks.txt")
    " Tagbar
        let tagbar_width = 30 " default: 40
        let g:tagbar_type_css = {
            \ 'ctagstype' : 'Css',
            \ 'kinds' : [
                \ 'c:classes',
                \ 's:selectors',
                \ 'i:identities'
            \ ]
        \ }
        let g:tagbar_type_markdown = {
            \ 'ctagstype' : 'markdown',
            \ 'kinds' : [
                \ 'h:headings',
                \ 'l:links',
                \ 'i:images'
            \ ],
            \ "sort" : 0
        \ }
    " UltiSnips
        let g:UltiSnipsExpandTrigger = "<Tab>"
        let g:UltiSnipsJumpForwardTrigger = "<Tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<S-Tab>"
    " vim-airline
        if exists("g:powerline_fonts") && g:powerline_fonts == 1
            let g:airline_powerline_fonts = 1
        else
            let g:airline_left_sep = ''
            let g:airline_right_sep = ''
        end
        "let g:airline_section_x = '%{getcwd()}'
        let g:airline_section_z = '%l/%L, %c'
        let g:airline_skip_empty_sections = 1
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#show_close_button = 0
        let g:airline#extensions#tabline#show_tab_type = 0
        let g:airline#extensions#tabline#show_tab_nr = 1
        let g:airline#extensions#tabline#tab_nr_type = 1
    " vim-bookmarks
        let g:bookmark_auto_close = 1
        let g:bookmark_auto_save_file = $HOME .'/.vim/tmp/bookmarks'
    " vim-commentary
        autocmd FileType cpp setlocal commentstring=//\ %s
    " vim-cpp-enhanced-highlight (by vim-polyglot)
        let c_no_curly_error=1 " Vim tend to a have issues with flagging braces as errors
        let g:cpp_class_decl_highlight = 1
        let g:cpp_class_scope_highlight = 1
        let g:cpp_concepts_highlight = 1
        "let g:cpp_member_variable_highlight = 1
    " vim-easy-align
        " Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
        vmap <Enter> <Plug>(EasyAlign)
        " Start interactive EasyAlign for a motion/text object (e.g. gaip)
        nmap ga <Plug>(EasyAlign)
    " vim-easyclip
        let g:EasyClipPreserveCursorPositionAfterYank = 1
        let g:EasyClipShareYanks = 1
        let g:EasyClipShareYanksDirectory = g:tempdir
        " Give my 'x' command back. Don't remap my 'm' key.
        let g:EasyClipUseCutDefaults = 0
        xmap x <Plug>MoveMotionXPlug
    " vim-easygrep: Prefer rg > ag > ack
        if executable('rg')
            let g:EasyGrepCommand="rg"
        elseif executable('ag')
            let g:EasyGrepCommand="ag"
        endif
    " vim-multiple-cursors
        let g:multi_cursor_use_default_mapping = 0
        let g:multi_cursor_next_key = '<C-j>'
        let g:multi_cursor_prev_key = '<C-k>'
        let g:multi_cursor_skip_key = '<C-x>'
        let g:multi_cursor_quit_key = '<Esc>'
    " vim-session
        let g:session_directory = '~/.vim/tmp/sessions'
        let g:session_autoload = 'no'
        let g:session_autosave = 'yes'
        let g:session_default_to_last = 1
        let g:session_default_overwrite = 1
        let g:session_command_aliases = 1
        let g:session_persist_colors = 0
    " vim-signify
        let g:signify_disable_by_default = 1
    " YouCompleteMe
        if exists("g:cpp_developer") && g:cpp_developer == 1
            noremap <leader>j :YcmCompleter GoTo<CR>
            let g:ycm_confirm_extra_conf = 0
            let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
            let g:ycm_extra_conf_globlist = [
                \ '~/.vim/plugged/YouCompleteMe/third_party/ycmd/*']
            let g:ycm_key_list_select_completion = ['<Down>']
            let g:ycm_key_list_previous_completion = ['<Up>']
            let g:ycm_autoclose_preview_window_after_completion = 1
            let g:ycm_autoclose_preview_window_after_insertion = 1
            let g:ycm_complete_in_comments = 1
            let g:ycm_complete_in_strings = 1
            let g:ycm_filepath_completion_use_working_dir = 1
            "let g:ycm_collect_identifiers_from_tags_files = 1
            "let g:ycm_register_as_syntastic_checker = 0
            "let g:ycm_show_diagnostics_ui = 0
        endif

" Color Theme
    set t_Co=256 " Enable xterm 256 color
    colorscheme distinguished

" Neovim
"     set viminfo+=n~/.nvim/tmpfiles/viminfo

