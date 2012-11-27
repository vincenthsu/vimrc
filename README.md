#Vincent's vimrc

#Installation (Linux & Mac)
    cd ~
    echo "source ~/.vim/vimrc" > .vimrc
    git clone --recursive https://github.com/VincentHsu/vimrc.git .vim
    vim +BundleInstall +helptags\ ~/.vddim/doc +qall
