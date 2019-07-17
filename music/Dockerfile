FROM ubuntu:18.04

# Install.
RUN apt-get update && \
	apt-get install -y curl python ffmpeg id3tool && \
 	curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
    chmod a+rx /usr/local/bin/youtube-dl

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
