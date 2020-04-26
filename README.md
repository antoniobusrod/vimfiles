antoniobusrod's vim configuration
=================================

Configuration and plugins managed by [vim-plug](https://github.com/junegunn/vim-plug).

Use `vimrc-basic` configuration for minimal vim setup.

## Installation
1. [Follow vim-plug "Installation" instructions](https://github.com/junegunn/vim-plug#installation)
1. Open `vim` and install plugins with `:PlugInstall`
1. Set symbolic links to `.vim` dir and `.vimrc` file
  ```sh
  ln -s ~/.vim/vimrc ~/.vimrc
  ```
1. Keep custom configuration in `~/.vimrc.local` file
1. [Follow YouCompleteMe plugin "Installation" instructions](https://github.com/ycm-core/YouCompleteMe#installation)

## Deploy basic installation

```sh
curl -o ~/.vimrc https://raw.githubusercontent.com/antoniobusrod/vimfiles/master/vimrc-basic
```

