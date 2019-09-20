[![](https://images.microbadger.com/badges/image/videoblocks/circleci-docker-base.svg)](https://microbadger.com/images/videoblocks/circleci-docker-base "Get your own image badge on microbadger.com") [![](https://images.microbadger.com/badges/version/videoblocks/circleci-docker-base.svg)](https://microbadger.com/images/videoblocks/circleci-docker-base "Get your own version badge on microbadger.com")

# circleci-docker-base
This is a lightweight Docker image with docker, docker-compose, and the latest LTS versions of node and npm.

## Publishing
This image auto-builds from source in dockerhub. Pushing a git tag will create an image with that tag in dockerhub, and merging to master will update "latest".

## TODOs:
- [ ] Investigate starting with a base docker image and install node


## Example docker-compose.yml 
```yaml
version: '2.1'
services:
  web:
    image: videoblocks/circleci-docker-base:latest
    ports:
      - "80:80"
      - "443:443"
    volumes:
      - ../../:/var/www/html
    working_dir: /var/www/html
```
