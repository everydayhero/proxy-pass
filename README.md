# Proxy pass

A simple Nginx Docker container that proxies all requests to $TARGET.

## Usage

```
$ docker run --rm -it -e TARGET=http://example.com everydayhero/proxy-pass
```

All logs are outputted to STDOUT and STDERR.
