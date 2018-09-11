.PHONY: build run stop restart rebuild clean

BASE_DIR = $(dir $(shell pwd))
DIR = $(notdir $(shell pwd))

#CONTAINER_NAME ?= skc-emacs
IMAGE_NAME ?= skc-emacs-26-base



build:
	docker build -t $(IMAGE_NAME) ./build --no-cache


run:
	docker run -it --name skc-emacs -v /tmp/.X11-unix:/tmp/.X11-unix:ro\
 -e DISPLAY="unix$(DISPLAY)"\
 -e UNAME="edg"\
 -e GNAME="edg"\
 -e UID="1001"\
 -e GID="1001"\
 -v $(BASE_DIR)$(DIR)/code:/home/edg/code\
 skc-emacs-26
