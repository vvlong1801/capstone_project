docker-build:
	sudo docker-compose build

docker-run:
	sudo docker-compose up -d

docker-status:
	sudo docker ps -a

docker-stop:
	sudo docker-compose down

enter-app:
	sudo docker-compose exec app bash
