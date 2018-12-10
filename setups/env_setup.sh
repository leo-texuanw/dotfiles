apt-get update
apt-get install vim
ln -s ~/workspace/dotfiles/gitconfig ~/.gitconfig
ln -s ~/workspace/dotfiles/vim/vimrc_ubuntu ~/.vimrc
source ~/.vimrc

# Install Vundle and download pluins
mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git
vim +PluginInstall +qall

# download asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
