FROM ubuntu:18.04

RUN apt-get update && \
	apt-get install -y curl python ffmpeg id3tool && \
 	curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

ENV HOME /root

WORKDIR /root

CMD ["bash"]
