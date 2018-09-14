[![Docker Build Status](https://img.shields.io/docker/build/ntrrg/vim.svg)](https://store.docker.com/community/images/ntrrg/vim/)
[![](https://images.microbadger.com/badges/image/ntrrg/vim.svg)](https://microbadger.com/images/ntrrg/vim)

A small and simple dockerized Vim.

## Features

* Host clipboard access (WIP).

* [My configuration](https://github.com/ntrrg/dotfiles/tree/master/vim)

## Usage

```shell-session
docker run --rm -it \
  [-u $(id -u $USER)] \
  [-v /path/to/project:/mnt] \
  ntrrg/vim
```

* `-u $(id -u $USER)`: Avoid ownership problems setting an arbitrary user ID.
* `-v /path/to/project:/mnt`: Work directory.

## Acknowledgment

Working on this project I use/used:

* [Debian](https://www.debian.org/)

* [XFCE](https://xfce.org/)

* [Vim](https://www.vim.org/)

* [Chrome](https://www.google.com/chrome/browser/desktop/index.html)

* [st](https://st.suckless.org/)

* [Zsh](http://www.zsh.org/)

* [GNU Screen](https://www.gnu.org/software/screen)

* [Git](https://git-scm.com/)

* [EditorConfig](http://editorconfig.org/)

* [Docker](https://docker.com)

* [Github](https://github.com)

* [Termux](https://termux.com)

**Vim Team.** *download: vim online.* https://www.vim.org/download.php

**Pan Shizhu.** *peaksea* https://www.vim.org/scripts/script.php?script_id=760

**Eugene Yaremenko.** *"dockerized" Vim.* https://github.com/JAremko/alpine-vim

