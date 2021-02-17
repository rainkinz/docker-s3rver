# 1.0 20210217

* Updated base node image to `15-alpine`.
* Updated all npm packages

# 20191024

* Breaking changes:
  As per: https://github.com/jamhall/s3rver/releases/tag/v3.0.1

    You must now specify a specific set of credentials for signed request work.
    Use S3RVER for both the Access Key ID and Secret Access Key.

  If you use the `bin/aws-s3-local` script this will be done automatically.
