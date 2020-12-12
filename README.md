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


