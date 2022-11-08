UID := $(shell id -u)

build:
	docker-compose build --build-arg USER_ID=$(UID)

.PHONY: build
