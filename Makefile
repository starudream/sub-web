.PHONY: init
init:
	git submodule update --init
	cp -rf custom/* sub-web
	cp -rf custom/.env sub-web
	rm -rf dist && cd sub-web && yarn && yarn build && mv dist .. && cd ..
