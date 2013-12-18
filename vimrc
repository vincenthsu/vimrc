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
    set sessionoptions-=options " don't persist options in sessions

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
    set wildignore+=*.o,*.obj " stuff to ignore when tab completing
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
    set listchars=trail:¬,tab:→· " define tabs and trailing chars
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smarttab " delete spaces (softtab) as tab
    set expandtab " no real tabs please!
    set softtabstop=4 " when hitting tab or backspace, how many spaces
                      " should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with
                  " set list on
    set shiftwidth=4 " auto-indent amount when using cindent,
                     " >>, << and stuff like that
    "autocmd FileWritePre * :retab " affect the existing tab characters
                                   " to match current settings when saving
    "autocmd BufWritePre * :retab
    autocmd FileType make setlocal noexpandtab " To turn off expandtab for
                                               " editing makefiles
    "set smartindent " like autoindent but also recognizes some C syntax
    "set cindent " automatic C program indenting
    set cinoptions=:0,l1,t0,g0  " cindent for kernel style:
                                " :: switch, l: case
                                " t: function return, g: C++ scope
                                " +: continuation line
                                " j: java, J: javascript
                                " N for chars, or Ns for shifts
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
                execute "setlocal bt=nofile bh=wipe ro noswf ft=" . filetype
                let b:diffbuf=1
            endif
        endfunction
        command! TDiffSaved call s:DiffWithSaved()
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
    " A mapping to make a backup session of the current file.
        function! WriteSession()
            let l:fname = strftime('%Y%m%d-%H%M%S') . '_' . expand('%:t')
            silent execute 'SaveSession! ' . l:fname
            echomsg 'Saved Session: ' . l:fname
        endfunction
        command! SaveSessionQuickly call WriteSession()
    " Quickly change layouts
        function! ReadMode()
            set nolist " show tabs and trailing
            set noexpandtab " use real tabs
            set softtabstop=4 " when hitting tab or backspace, how many spaces
                              " should a tab be (see expandtab)
            set tabstop=4 " real tabs should be 8, and they will show with
                          " set list on
            set shiftwidth=4 " auto-indent amount when using cindent,
                             " >>, << and stuff like that
            set colorcolumn=
            set nonumber
        endfunction

        function! EditMode()
            set list " show tabs and trailing
            set expandtab " no real tabs please!
            set softtabstop=4 " when hitting tab or backspace, how many spaces
                              " should a tab be (see expandtab)
            set tabstop=4 " real tabs should be 8, and they will show with
                          " set list on
            set shiftwidth=4 " auto-indent amount when using cindent,
                             " >>, << and stuff like that
            set colorcolumn=
            set number
        endfunction

        function! KernelMode()
            set nolist " show tabs and trailing
            set noexpandtab " use real tabs
            set softtabstop=8 " when hitting tab or backspace, how many spaces
                              " should a tab be (see expandtab)
            set tabstop=8 " real tabs should be 8, and they will show with
                          " set list on
            set shiftwidth=8 " auto-indent amount when using cindent,
                             " >>, << and stuff like that
            set colorcolumn=80
            set number
        endfunction

" Keymap
    " Normal Mappings
        noremap <F2> :NERDTreeTabsToggle<CR>
        noremap <F3> :TagbarToggle<CR>
        noremap <F4> :BufExplorer<CR>
        noremap <F5> :set nu!<CR>
        noremap <F6> :set list!<CR>
        noremap <F7> :GitGutterToggle<CR>
        noremap <F8> :call RTrailing()<CR>
        noremap <F9> :DeleteSession<CR>
        noremap <F10> :SaveSessionQuickly<CR>
        noremap <F11> :SaveSession!
        noremap <F12> :OpenSession!<CR>
        noremap <leader>1 :call ReadMode()<CR>
        noremap <leader>2 :call EditMode()<CR>
        noremap <leader>3 :call KernelMode()<CR>
        noremap <leader>4 :retab<CR>
        noremap <leader>5 do<CR>
        noremap <leader>6 dp<CR>
        noremap <leader>7 <C-A>
        noremap <leader>8 <C-X>
        noremap <leader>l :set colorcolumn=80<CR>
    " Switch buffer
        noremap <C-left> :tabprevious<CR>
        noremap <C-right> :tabnext<CR>
        noremap <C-up> :tabnew<CR>
        noremap <C-down> :bdelete<CR>
    " Switch between windows
        noremap <C-H> <C-W>h
        noremap <C-L> <C-W>l
        noremap <C-J> <C-W>j
        noremap <C-K> <C-W>k
    " Split windows
        nnoremap <C-\> :vsp<CR>
    " Mouse scrolling
        noremap <MouseDown> <C-Y>
        noremap <MouseUp> <C-E>
        noremap <C-MouseDown> l
        noremap <C-MouseUp> h
    " Force Save
        noremap <leader>w :w !sudo tee %<CR>
    " Diff file with current modify
        noremap <leader>d :TDiffSaved<CR>
    " Force line ending conversion
        noremap <leader>u :set ff=unix<CR>
        noremap <leader>d :set ff=dos<CR>
    " File encodings to JIS
        noremap <leader>j :e ++enc=cp932<CR>
    " Plugin: Gtags
        noremap <leader>g :Gtags<CR>
        noremap <leader>s :Gtags -s<CR>
        noremap <leader>r :Gtags -r<CR>
        noremap <leader>z :cp<CR>
        noremap <leader>x :cn<CR>
    " Plunoregin: Ctrlp
        " default bindings conflict with yankring bindings
        noremap <leader>p :CtrlPMixed<CR>

" Use Vundle plugin to manage all other plugins
    filetype off " required!
    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()
    " File Manager
        Bundle 'The-NERD-tree'
        Bundle 'ctrlp.vim'
        Bundle 'bufexplorer.zip'
        Bundle 'jistr/vim-nerdtree-tabs'
        Bundle 'xolox/vim-misc'
        Bundle 'xolox/vim-session'
        "Bundle 'zefei/buftabs'
        "Bundle 'mihaifm/bufstop'
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
        Bundle 'ervandew/supertab'
        "Bundle 'Townk/vim-autoclose'
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
        Bundle 'bling/vim-airline'
    " Version control
        Bundle 'tpope/vim-fugitive'
        Bundle 'airblade/vim-gitgutter'
    " Others
        Bundle 'gmarik/vundle'
        Bundle 'YankRing.vim'
        Bundle 'sjl/gundo.vim'
        Bundle 'terryma/vim-multiple-cursors'
        Bundle 'terryma/vim-expand-region'

    filetype plugin on " required!

" Plugin Settings
    " Ctags
        set tags=tags;
    " Tagbar
        let tagbar_width=30 " default: 40
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
    " Vim Git Gutter
        let g:gitgutter_enabled=0 " Disable at startup.
    " vim-session
        let g:session_directory='~/.vim/tmp/sessions'
        let g:session_autoload='yes'
        let g:session_autosave='yes'
        let g:session_default_to_last=1
        let g:session_default_overwrite=1
        let g:session_command_aliases = 1
    " Airline
        let g:airline_powerline_fonts=0
        let g:airline_left_sep=''
        let g:airline_right_sep=''
        let g:airline_section_x='%{getcwd()}'
        let g:airline_section_z='%l/%L'
    " BufTabs
        "let g:buftabs_other_components_length=20
        "let g:buftabs_show_number=0
        "let g:buftabs_marker_start=" "
        "let g:buftabs_marker_end=" "
        "set statusline=
        "set statusline+=\ #{buftabs}
        "set statusline+=%=
        "set statusline+=\ %{''.(&fenc!=''?&fenc:&enc).''}
        "set statusline+=%{&ff!='unix'?'['.&ff.']':''}
        "set statusline+=\ L%-5.5l

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
