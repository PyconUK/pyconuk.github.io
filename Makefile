pwd = $(shell pwd)
help:
	@echo 'Makefile for pyconuk.org'
	@echo ''
	@echo 'Usage:'
	@echo '   make build                       build the docker container'
	@echo '   make run                         run the docker container'
	@echo '   make tests                       run the tests'
	@echo ''

build:
	docker build -t pyconuk.org .

run:
	docker run -p 80:4000 -v $(pwd):/opt/pyconuk/site:rw -ti pyconuk.org

tests:
	bash tests/name-lint.sh
	docker start evil_hoover && docker exec evil_hoover tests/htmlproof.sh

.PHONY: build run tests
