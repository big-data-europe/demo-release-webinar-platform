up: export COMPOSE_HTTP_TIMEOUT = 600
up:
	docker -H :4000 network create -d overlay bde-demo
	docker-compose -H :4000 build
	docker-compose -H :4000 up -d

down:
	docker-compose -H :4000 down
	docker -H :4000 network rm bde-demo

app-pi:
	docker-compose -H :4000 -f docker-compose-spark-app-pi.yml build
	docker-compose -H :4000 -f docker-compose-spark-app-pi.yml up

app-wc:
	docker-compose -H :4000 -f docker-compose-spark-app-wc.yml build
	docker-compose -H :4000 -f docker-compose-spark-app-wc.yml up
