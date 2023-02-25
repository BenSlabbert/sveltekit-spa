#!make

.PHONY: install
install:
	yarn

.PHONY: build
build:
	yarn run build

.PHONY: check
check:
	yarn run check

.PHONY: run
run:
	yarn run dev

.PHONY: lint
lint:
	yarn run lint

.PHONY: fmt
fmt:
	yarn run format

.PHONY: clean
clean:
	rm -rf build
