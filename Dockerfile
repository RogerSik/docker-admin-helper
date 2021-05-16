# https://hub.docker.com/_/alpine
FROM alpine:latest

RUN apk update && \
  apk add --no-cache nano mc micro rsync ncdu wget

# zsh installation
RUN apk update && \
  apk add --no-cache nano zsh zsh-autosuggestions zsh-syntax-highlighting

RUN sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
RUN echo "source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc && \
echo "source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

ENTRYPOINT /bin/zsh