# Elixir Development Environment Setup
1. git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.3.0
    + sometimes `asdf` can't work immediately, reboot or wait..
2. Depending on your OS, run the following
    # For Ubuntu or other linux distros
    echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
    echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

    # OR for Mac OSX
    echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bash_profile
    echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bash_profile
3. Install deps
    + sudo apt-get install -y automake autoconf libreadline-dev libncurses-dev libssl-dev libyaml-dev libxslt-dev libffi-dev libtool unixodbc-dev
4. Install Erlang
    1. install dependencies 
        + Install the build tools (dpkg-dev g++ gcc libc6-dev make)
            sudo apt-get install build-essential m4
        + Automatic configure script builder (debianutils m4 perl)
            sudo apt-get -y install autoconf
        + Needed for HiPE (native code) support, but already installed by autoconf
            sudo apt-get -y install m4
        + Needed for terminal handling (libc-dev libncurses5 libtinfo-dev libtinfo5 ncurses-bin)
            sudo apt-get -y install libncurses5-dev
        + For building with wxWidgets (start observer or debugger!)
            Linux: sudo apt-get -y install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3
            OS X: brew install wxmac
        + For building ssl (libssh-4 libssl-dev zlib1g-dev)
            sudo apt-get -y install libssh-dev
        + ODBC support (libltdl3-dev odbcinst1debian2 unixodbc)
            sudo apt-get -y install unixodbc-dev
    2. add plugin
        asdf plugin-add erlang https://github.com/asdf-vm/asdf-erlang.git
    3. install erlang
        asdf list-all erlang
        asdf install erlang 19.3
    4. set current version
        asdf global erlang 19.3
4. Install Elixir
    asdf plugin-add elixir https://github.com/asdf-vm/asdf-elixir.git
    asdf list-all elixir
    asdf install elixir 1.*.*
    asdf global elixir 1.*.*

