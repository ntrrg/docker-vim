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
  ./configure && \
  make && \
  make install && \
  cd / && \
  rm -rf /src
RUN \
  wget -O $HOME/.vimrc https://raw.githubusercontent.com/ntrrg/dotfiles/master/vim/.vimrc && \
  mkdir -p $HOME/.vim/colors && \
  wget -O $HOME/.vim/colors/peaksea.vim https://www.vim.org/scripts/download_script.php?src_id=24721
VOLUME /mnt
WORKDIR /mnt
ENTRYPOINT ["vim"]

