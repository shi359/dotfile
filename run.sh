git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/sickill/vim-monokai/colors/monokai.vim ~/.vim/colors
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
# for mac: 
# brew install cmake
# ./install.py --clang-completer --gocode-completer
apt install build-essential cmake -y
./install.py --all
