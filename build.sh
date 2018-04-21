#!/bin/sh

MODS="yes"
FLAGS="\
  --with-features=huge \
"

./configure --prefix=/usr $FLAGS &&
make &&
make install

if [ "${MODS}" = "yes" ]; then
  cp -rf /repo/vim/* /usr/share/vim/vim80/
fi

