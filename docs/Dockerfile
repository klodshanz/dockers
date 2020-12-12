FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y curl software-properties-common && \
	add-apt-repository ppa:deadsnakes/ppa && \
	apt-get update && \
	apt-get install -y python3-pip && \
	apt-get install -y hugo pandoc

RUN pip3 install markdown pelican mkdocs

COPY versions.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/versions.sh

COPY .bash_aliases .prompt.sh /root/
RUN chmod +x /root/.prompt.sh

RUN mkdir /root/site

ENV HOME /root

WORKDIR /root

EXPOSE 8000

CMD ["bash"]
