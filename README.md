# Docker POC

A very quick and simple docker POC

## Prerequisites

Install [docker](https://docs.docker.com/install/)

## Common Usage

### Server container

Build image:

```bash
docker build --target=server -t docker-poc .
```

Run container:

```bash
docker run --rm -it -p 80:3000 docker-poc
```

Then open in your browser http://localhost/

### Test container

Build image:

```bash
docker build --target=test -t docker-poc.test .
```

Run tests

```bash
docker run --rm -it docker-poc.test
```

## Helper command examples

Run Container in background

```bash
docker run -d -p 80:3000 docker-poc
```

List running Containers

```bash
docker ps
```

See container ouput

```bash
docker logs <CONTAINER_ID> -f
```

Start shell session inside container

```bash
docker exec -it <CONTAINER_ID> sh
```

Clean up

```bash
docker container prune -f # Prune stopped containers
docker image prune -f #Prune unused images
```
