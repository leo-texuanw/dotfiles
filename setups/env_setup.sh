apt-get update
apt-get install vim
apt-get install git
apt-get install tmux
apt-get install build-essential

# Install Vundle and download pluins
mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git

ln -s ~/workspace/dotfiles/gitconfig ~/.gitconfig
ln -s ~/workspace/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/workspace/dotfiles/tmux/tmux.conf ~/.tmux.conf
source ~/.vimrc
vim +PluginInstall +qall

source ~/.vimrc

# download asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
