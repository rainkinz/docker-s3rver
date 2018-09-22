# Containerized version of s3rver

This is simply a containerized version of https://github.com/jamhall/s3rver.

## Use with Docker Compose

Add the appropriate entry to your `docker-compose.yml` optionally mapping port
8000 to a local port:

```
version: "3"
services:

  s3:
    image: rainkinz/s3rver
    ports:
      - "8000:8000"
```

Start it up:

```
docker-compose up
```
