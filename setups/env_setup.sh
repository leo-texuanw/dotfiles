echo "-------------- Update atp-get ..."
apt-get update

echo "-------------- Installing Vim ..."
apt-get install vim
apt-get install git
apt-get install tmux
apt-get install build-essential

echo "-------------- Soft linking configurations ..."
ln -s ~/workspace/dotfiles/gitconfig ~/.gitconfig
ln -s ~/workspace/dotfiles/vim/vimrc_ubuntu ~/.vimrc
ln -s ~/workspace/dotfiles/tmux/tmux.conf ~/.tmux.conf
source ~/.vimrc

# Install Vundle and download pluins
echo "-------------- Install Vundle plugins ..."
mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git

ln -s ~/workspace/dotfiles/gitconfig ~/.gitconfig
ln -s ~/workspace/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/workspace/dotfiles/tmux/tmux.conf ~/.tmux.conf
source ~/.vimrc
vim +PluginInstall +qall

echo "-------------- Compiling YouCompleteMe ..."
cd ~/.vim/bundle/YouCompleteMe
python install.py --all
source ~/.vimrc

# download asdf
echo "-------------- Downloading asdf ..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
