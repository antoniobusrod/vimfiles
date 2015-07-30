vimfiles
========

vim files folder

Move `vimrc` to your home directory as `.vimrc`

## Git commands

```bash
git submodule init .

git submodule sync
git submodule update --recursive
git submodule foreach git pull origin master

# Alternative 2
git submodule update --init --recursive

# Alternative 3
git submodule -q foreach git pull -q origin master
```
