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

If you want expose a local directory as an S3 bucket:

```
version: "3"
services:
  s3:
    image: rainkinz/s3rver
    ports:
      - "8000:8000"
    volumes:
      - /path/to/dir/you/want/to/expose/via/s3/local/:/data

```

There is an example configured to mount the repos directory as a bucket. For
example:

```
docker-compose -f examples/docker-compose-with-mount.yml up --build
```

Then use the `bin/aws-s3-local` script to access the server:

```
bin/aws-s3-local ls
2019-10-24 17:33:02 parrots

bin/aws-s3-local ls s3://parrots
2019-10-24 17:33:02         25 parrot.txt

bin/aws-s3-local cp s3://parrots/parrot.txt /tmp/t.txt
```

