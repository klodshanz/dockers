build:
	@docker build --tag music .

up:
	@docker run --interactive --tty  -e "TERM=xterm-256color" --volume /home/claus/dockers/music/output:/output:Z music
