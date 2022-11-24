.PHONY: init
init:
	git submodule update --init

.PHONY: update
update:
	git submodule update --remote

.PHONY: dist
dist:
	cp -rf custom/* sub-web
	cp -rf custom/.env sub-web
	rm -rf dist
	cd sub-web && yarn && yarn build && mv dist .. && cd ..
	rm -rf dist/_redirects
