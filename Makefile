.PHONY: help setup server clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

setup: \
	node_modules

server:
	npx --no-install http-server -a 0.0.0.0 -p 8888 .

node_modules:
	npm install

clean:
	rm -rf node_modules
