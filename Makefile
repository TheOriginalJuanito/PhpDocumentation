# Makefile for compiling SCSS to CSS in public directory

scss:
	docker run --rm -v $(PWD)/src/scss:/src/scss -v $(PWD)/public/src/css:/src/css node:20-alpine sh -c "npm install -g sass && sass /src/scss:/src/css"

watch-scss:
	docker run --rm -v $(PWD)/src/scss:/src/scss -v $(PWD)/public/src/css:/src/css node:20-alpine sh -c "npm install -g sass && sass --watch /src/scss:/src/css"

.PHONY: scss watch-scss
