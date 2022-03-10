.PHONY: init
init: SHELL:=/bin/bash
init:
	git submodule update --init
	cp -rf custom/* sub-web
	rm -rf dist && cd sub-web && yarn && yarn build && mv dist .. && cd ..
