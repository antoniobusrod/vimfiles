antoniobusrod's vim configuration
=================================

Configuration and plugins managed by [vim-plug](https://github.com/junegunn/vim-plug).

Use `vimrc-basic` configuration for minimal vim setup.

## Installation
1. Clone this repo under `.vim` directory: `git clone https://github.com/antoniobusrod/vimfiles.git ~/.vim`
1. Create symbolic links for `~/.vimrc` from `.vim` directory: `ln -s ~/.vim/vimrc ~/.vimrc`
1. [Follow vim-plug "Installation" instructions](https://github.com/junegunn/vim-plug#installation)
1. Open `vim` and install plugins with `:PlugInstall`
1. Keep custom configuration in `~/.vimrc.local` file

## Deploy basic installation

```sh
curl -o ~/.vimrc https://raw.githubusercontent.com/antoniobusrod/vimfiles/master/vimrc-basic
```

