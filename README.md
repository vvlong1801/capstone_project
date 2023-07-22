## Build and run docker
# make docker-compose file
- $ cp -p docker-compose.example.yaml docker-compose.yaml

# Build Docker
- $ make docker-build

# Run Docker
- $ make docker-run 

# Check running container
- $ make docker-status

# Stop docker
- $ make docker-stop 

# access to webapp
- $ make enter-app

## Build and run api
# clone api
- $ cd api
- $ git clone https://github.com/vvlong1801/capstone-api.git
- $ cd capstone-api/

# make env file
- $ cp -p .env.example .env
- $ change .env file content by
- - DB_CONNECTION=mysql
- - DB_HOST=db
- - DB_PORT=# view PORT in docker-compose 
- - DB_DATABASE= # view MYSQL_DATABASE in docker-compose 
- - DB_USERNAME= # view MYSQL_USER in docker-compose 
- - DB_PASSWORD= # view MYSQL_PASSWORD in docker-compose 

# access app
- $ make enter-app

# gen key and seed db
- $ chmod -R 777 storage/
- $ rm -rf composer.lock
- $ composer install
- $ php artisan key:generate
- $ php artisan migrate
- $ php artisan db:seed

# dislay laravel 
- $ localhost:8080

# access api
- $ localhost:8080/api/v1/
