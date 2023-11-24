.PHONY: image container test

image:
	docker build docker -t chisel-docker-dev:latest > docker.log

container:
	docker run --rm -it --entrypoint bash -v ${PWD}:/workspace/ chisel-docker-dev:latest

test:
	sbt test

