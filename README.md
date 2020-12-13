# Vimrc Setup Guide
**1. Make Symbolic link** 
```
$ ln -n <Absolute path to vimrc in this repo> ~/.vimrc  
e.g) ln -n ~/git/vimrc/vimrc ~/.vimrc  
```

**2. [Check the cilpboard support in your vim](https://hyoje420.tistory.com/49)**
```
$ vim --version | grep clipboard
```

**3. [Set up Bundle](https://github.com/VundleVim/Vundle.vim)**  
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim  
$ vim +PluginInstall +qall  
```

**4. [Set up fzf](https://github.com/junegunn/fzf#as-vim-plugin)**
```
cd ~/.vim/bundle/fzf
./install
```

Also [install ripgrep](https://github.com/BurntSushi/ripgrep#installation) to use like ':Rg <searching string>' in fzf
```
//NOTE: It's for ubuntu 16.04. 
$ curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb
$ sudo dpkg -i ripgrep_12.1.1_amd64.deb
```

