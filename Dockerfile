FROM alpine:3.7
RUN apk update && apk upgrade && apk add \
  build-base \
  ctags \
  gcc \
  git \
  libx11-dev \
  libxpm-dev \
  libxt-dev \
  libxtst-dev \
  make \
  ncurses-dev
RUN git clone --depth=1 https://github.com/vim/vim.git src
WORKDIR /src
COPY . /repo
RUN /repo/build.sh
VOLUME /mnt
WORKDIR /mnt
RUN rm -rf /repo /src
ENTRYPOINT ["vim"]

