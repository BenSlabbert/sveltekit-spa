#!make

.PHONY: install
install:
	yarn

.PHONY: build
build:
	yarn run build

.PHONY: buildDocker
buildDocker:
	docker buildx build . -t sveltekit-spa:latest

.PHONY: dockerSave
dockerSave:
	docker save sveltekit-spa:latest | gzip > sveltekit-spa_latest.tar.gz

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

.PHONY: test
test:
	yarn playwright test

.PHONY: showReport
showReport:
	yarn playwright show-report

.PHONY: clean
clean:
	rm -rf build
	rm -rf playwright-report
	rm -f sveltekit-spa_latest.tar.gz
