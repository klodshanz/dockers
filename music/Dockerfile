FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y sudo curl wget python ffmpeg id3tool python-mutagen && \
    curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

COPY .bash_aliases .bash_history .prompt.sh entry.sh /root/
RUN chmod +x /root/*.sh

WORKDIR /root

ENV HOME /root
ENV TERM xterm-256color

CMD ["/root/entry.sh"]
