FROM gitpod/openvscode-server:1.60.2

USER root

RUN apt-get update 
RUN apt-get install -y \
    zsh curl wget nano

RUN chsh -s $(which zsh)

RUN zsh --version && curl --version && wget --version
RUN curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh

USER openvscode-server
RUN sudo chsh -s $(which zsh)
RUN mkdir -p .opencode-server
