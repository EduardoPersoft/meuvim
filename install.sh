mkdir ~/.vim
cp ./vimfiles/autoload ~/.vim/autoload -r
cp ./vimfiles/plugged ~/.vim/plugged -r
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ./_vimrc ~/.vimrc
cd ~
vim .vimrc
