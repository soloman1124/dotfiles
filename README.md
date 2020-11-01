# Soloman's dotfiles (Windows 10 with WSL2)

## dotfiles

## install

1. manually setup WSL2 with Ubuntu Distro based on:
   https://docs.microsoft.com/en-us/windows/wsl/install-win10

2. setup docker support (with wsl2) based on:
   https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers

3. within wsl2 (Ubuntu), do the following:

   3.1. ensure `git` is available and with `.ssh/id_rsa` set:
        https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/

   3.2. Run this:

```sh
git clone --single-brance -b windows10 git@github.com:soloman1124/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./run
```


## features

- set config for windows terminal
- set wslconfig.json to restrict windows docker resource usage
- add some wsl related utility scripts
- fix vim issues inside windows terminal
- fix wsl ssh_agent enter pass phrase issue
- utilise whalebrew packages in wsl2
