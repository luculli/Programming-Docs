IMAGE_NAME:=seagull/mathmod:latest
CONTAINER_NAME:=mathmod

default: start

build:
	docker build -t $(IMAGE_NAME) .

start:
	exec docker run -d -t -v $(CURDIR):/home/mmod  -v /tmp/.X11-unix:/tmp/.X11-unix -v ${HOME}/.Xauthority:$(HOME)/.Xauthority:rw --net=host -e DISPLAY=$(DISPLAY) --rm --gpus all --name $(CONTAINER_NAME) $(IMAGE_NAME)

bash:
	exec docker run -it -v $(CURDIR):/home/mmod  -v /tmp/.X11-unix:/tmp/.X11-unix -v ${HOME}/.Xauthority:/home/seagull/.Xauthority:rw --net=host -e DISPLAY=$(DISPLAY) --rm --gpus all --name $(CONTAINER_NAME) $(IMAGE_NAME)  /bin/bash

stop:
	docker stop $(CONTAINER_NAME)

remove:
	docker rm $(IMAGE_NAME)
	

