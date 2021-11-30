FROM ubuntu:20.04

RUN apt-get update && \
	apt-get install -y sudo curl software-properties-common && \
	apt-get install -y python3-pip && \
	apt-get install -y hugo pandoc

RUN pip3 install markdown pelican mkdocs pdfminer

COPY versions.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/versions.sh

COPY .bash_aliases .prompt.sh entry.sh /root/
RUN chmod +x /root/*.sh

RUN mkdir /root/site

ENV HOME /root
ENV TERM xterm-256color

WORKDIR /root

EXPOSE 8000

CMD ["/root/entry.sh"]
