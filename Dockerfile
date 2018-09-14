FROM alpine:3.8
RUN apk update && apk upgrade && apk add \
  build-base \
  ctags \
  gcc \
  git \
  make \
  ncurses-dev
RUN \
  git clone --depth=1 https://github.com/vim/vim.git /src && \
  cd /src && \
  ./configure --with-features=tiny && \
  make && \
  make install && \
  cd / && \
  rm -rf /src
ADD https://raw.githubusercontent.com/ntrrg/dotfiles/master/vim/.vimrc $HOME
ADD \
  https://www.vim.org/scripts/download_script.php?src_id=24721 \
  $HOME/.vim/colors/peaksea.vim
VOLUME /mnt
WORKDIR /mnt
ENTRYPOINT ["vim"]

