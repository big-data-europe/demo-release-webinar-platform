up: export COMPOSE_HTTP_TIMEOUT = 600
up:
	docker -H :4000 network create -d overlay bde-demo
	docker-compose -H :4000 build
	docker-compose -H :4000 up -d

down:
	docker-compose -H :4000 down
	docker -H :4000 network rm bde-demo
