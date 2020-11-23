build:
	docker build --tag music .
run:
	docker run --user claus --interactive --tty -v $(pwd)/output:/output:Z music
in:
	docker exec --user claus --workdir /home/claus/ansible --interactive --tty control bash
