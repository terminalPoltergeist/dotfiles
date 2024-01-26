whereis nvim;
if [ $? -ne 0 ] then
    wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim.appimage
    sleep 1
    chmod u+x nvim.appimage && ./nvim.appimage
    ln -s ~/nvim.appimage /usr/bin/nvim
    export PATH=/home/nemit031/.local/bin/:$PATH
else
    echo "Nvim installed!"
fi
