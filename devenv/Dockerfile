FROM fedora:24
RUN dnf install -y tmux git sudo gcc make bzip2 openssl-devel readline-devel zlib-devel sqlite-devel gcc-c++ tar findutils && \
    useradd -m -U -u 1000 -G wheel devel && \
    echo '%wheel        ALL=(ALL)       NOPASSWD: ALL' >> /etc/sudoers
USER devel
RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
    cd ~/.rbenv && src/configure && make -C src && \
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile && \
    git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
RUN echo 'eval "$(~/.rbenv/bin/rbenv init -)"' >> ~/.bashrc && \
    ~/.rbenv/bin/rbenv install 2.3.1 && \
    ~/.rbenv/bin/rbenv global 2.3.1
