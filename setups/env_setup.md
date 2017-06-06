## Set up basic Env
1. Github and vim setup
    + Generate and add id_rsa.pub to github
        ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    + Clone `git clone git@github.com:xingzaizhailu/dotfiles.git`
    + `ln -s ~/workspace/dotfiles/gitconfig .gitconfig`
    + `ln -s ~/workspace/dotfiles/vimrc .vimrc`
3. Install Vundle 
    + `mkdir -p ~/.vim/bundle/`
    + cd .vim/bundle
    + `git clone https://github.com/VundleVim/Vundle.vim.git`
    + `:PluginInstall` inside vim or `vim +PluginInstall +qall` in command line

