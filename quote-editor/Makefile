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
