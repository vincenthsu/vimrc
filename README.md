# Vincent's vimrc

## Installation (Linux & Mac)

    cd ~
    echo "source ~/.vim/vimrc" > .vimrc
    git clone --recursive https://github.com/VincentHsu/vimrc.git .vim
    mkdir -p ~/.vim/autoload
    curl --insecure -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim
    vim +PlugInstall +helptags\ ~/.vim/doc +qall
