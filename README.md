# Vimrc Setup Guide
**1. Make Symbolic link** 
```
ln -n <Absolute path to vimrc in this repo> ~/.vimrc  
e.g) ln -n ~/git/vimrc/vimrc ~/.vimrc  
```

**2. [Check the cilpboard support in your vim](https://hyoje420.tistory.com/49)**
```
vim --version | grep clipboard
```
If you don't have clipboard support in your vim, then :
```
sudo apt update && sudo apt install vim-gtk -y
```

**2-1. [Get latest version of vim](https://vi.stackexchange.com/questions/10817/how-can-i-get-a-newer-version-of-vim-on-ubuntu)**  
Also you can get latest version of vim like this:
```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

**3. [Set up Bundle](https://github.com/VundleVim/Vundle.vim)**  
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
vim +PluginInstall +qall  
```

**4. [Install ripgrep](https://github.com/BurntSushi/ripgrep#installation)**  
```
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
sudo dpkg -i ripgrep_12.1.1_amd64.deb
```

**5. [Set up fzf](https://github.com/junegunn/fzf#as-vim-plugin)**
```
cd ~/.vim/bundle/fzf
./install
```

**6. [Setup Korean](https://sigmafelix.wordpress.com/2020/08/17/wsl2%EC%97%90%EC%84%9C-%ED%95%9C%EA%B8%80-%EC%9E%85%EB%A0%A5-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0/)**   
