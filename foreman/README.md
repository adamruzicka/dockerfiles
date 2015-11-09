# Foreman docker compose
Docker compose for running foreman + smart-proxy.

## Usage:
- Build the images with `docker-compose build`
- Edit the `docker-compose.yml` to properly mount your sources
- Set your postgres username, password and host in foreman's `config/database.yml`
  - Default username: `foreman`
  - Default password: `secret`
  - Hostname will be something like: `foreman-postgres-1`
- Deploy containers with `docker-compose up -d`
- Watch logs for admin password using `docker-compose logs foreman`
  - Alternatively launch rails console using `docker-compose run foreman bundle exec rails console` and change the admin password there
- Use container names as hostnames in foreman for smart-proxy

## Updating:
```shell
# Stop the containers
docker-compose stop

# Destroy all the containers except for the storage one
docker-compose rm foreman proxy postgres

# Rebuild the images
docker-compose build

# Start them again
docker-compose up -d
```

