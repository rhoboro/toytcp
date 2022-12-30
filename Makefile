IMAGE_NAME:=tyotcp
IMAGE_TAG:=tyotcp
IMAGE:=${IMAGE_NAME}:${IMAGE_TAG}
CMD:=/bin/bash

build:
	docker build -t ${IMAGE} .

run:
	docker run --privileged -it --rm --name ${IMAGE_NAME} -v $$(pwd):/app ${IMAGE} ${CMD}

exec:
	docker exec -it $$(docker ps -q -f "name=${IMAGE_NAME}") ${CMD}

stop:
	docker stop $$(docker ps -q -f "name=${IMAGE_NAME}")
