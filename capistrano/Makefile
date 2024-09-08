all:

.PHONY: build
build:
	docker build remote -t remote-server

.PHONY: run
run:
	docker stop remote-server || docker run --rm -d -p 2222:22 --name remote-server remote-server

.PHONY: logs
logs:
	docker logs -f remote-server

.PHONY: bash
bash:
	docker exec -it remote-server bash

.PHONY: deploy
deploy:
	bundle exec cap development deploy --trace
