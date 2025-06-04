# Makefile for PHP/Apache Docker project with SCSS support

IMAGE_NAME=php-docs-scss
CONTAINER_NAME=php-docs-scss-container

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run --rm -p 8080:80 --name $(CONTAINER_NAME) $(IMAGE_NAME)

stop:
	docker stop $(CONTAINER_NAME) || true

scss:
    docker run --rm -v $(PWD)/public/src/scss:/src/scss -v $(PWD)/public/src/css:/src/css node:20-alpine sh -c "npm install -g sass && sass /src/scss:/css"

.PHONY: build run stop scss
