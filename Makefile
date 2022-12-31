IMAGE_NAME:=tyotcp
IMAGE_TAG:=tyotcp
IMAGE:=${IMAGE_NAME}:${IMAGE_TAG}
CMD:=/bin/bash
VOLUME:=toytcp-vol

run:
	docker compose run toytcp /bin/bash

exec:
	docker compose exec toytcp /bin/bash

stop:
	docker compose stop

clean:
	docker-compose down --rmi all --volumes --remove-orphans
