.PHONY: initdb
initdb:
	initdb -D data

.PHONY: startdb
startdb:
	pg_ctl -D data -l data/logfile start

.PHONY: stopdb
stopdb:
	pg_ctl -D data stop

.PHONY: statusdb
statusdb:
	pg_ctl -D data status

.PHONY: setup
setup:
	bin/setup

.PHONY: dev
dev:
	bin/dev

.PHONY: test
test:
	bin/rails test:all

.PHONY: run-redis
run-redis:
	docker run --rm --name quote-editor-redis  -v $(PWD)/data/redis:/data -p 6379:6379 -d redis redis-server --save 60 1 --loglevel warning

.PHONY: stop-redis
stop-redis:
	docker stop quote-editor-redis
