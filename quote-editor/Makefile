.PHONY: initdb
initdb:
	initdb -D data

.PHONY: startdb
startdb:
	pg_ctl -D data -l data/logfile start

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
	bin/rails test:system

.PHONY: run-redis
run-redis:
	docker run --name quote-editor-redis  -v $(PWD)/data/redis:/data -p 6379:6379 -d redis redis-server --save 60 1 --loglevel warning
.PHONY: stop-redis
stop-redis:
	docker stop quote-editor-redis

.PHONY: rm-redis
rm-redis:
	docker rm quote-editor-redis
