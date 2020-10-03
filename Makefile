up:
		docker-compose up -d
build:
		# Dockerfileの変更したらやること
		docker-compose build
stop:
		docker-compose stop
work:
		docker-compose exec web bash
db:
		docker-compose exec db bash
down:
		docker-compose down
restart:
		docker-compose restart
new:
		docker-compose run web rails new . --force --database=mysql --skip-bundle