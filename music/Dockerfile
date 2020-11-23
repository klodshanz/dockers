FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y sudo curl python ffmpeg id3tool python-mutagen && \
 	curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

RUN useradd -m claus -s /bin/bash && \
    echo "claus:claus" | chpasswd && \
    adduser claus sudo && \
    echo "claus ALL=(ALL) NOPASSWD: ALL" | sudo EDITOR='tee -a' visudo

COPY .bash_aliases /home/claus/

WORKDIR /home/claus

CMD ["bash"]
