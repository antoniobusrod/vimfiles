antoniobusrod's vim configuration
=================================

Installation
------------
1. Clone repo, `git clone https://github.com/antoniobusrod/vimfiles.git ~/.vim`
2. [Install vundle plugin](https://github.com/VundleVim/Vundle.vim#quick-start): `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
3. Install dependencies, `vim +PluginInstall +qall`
   1. Update dependencies `vim +PluginUpdate +qall`
4. Set symbolic links to `.vim` dir and `.vimrc` file
  ```
  ln -s vimfiles ~/.vim
  ln -s vimfiles/vimrc ~/.vimrc
  ```
5. Edit your `.gvimrc` from base file (edit `colorscheme` and lucius mode).

Ready to use

## Post installation

- Install Node dependencies for **tsuquyomi** and review if `package.json` is up to date

## Deploy basic installation

```sh
curl -o ~/.vimrc https://raw.githubusercontent.com/antoniobusrod/vimfiles/master/vimrc-basic
```

