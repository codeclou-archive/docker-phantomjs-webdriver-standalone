# docker-phantomjs-webdriver-standalone

[![](https://codeclou.github.io/doc/badges/generated/docker-image-size-94.svg)](https://hub.docker.com/r/codeclou/docker-phantomjs-webdriver-standalone/tags/) [![](https://codeclou.github.io/doc/badges/generated/docker-from-ubuntu-16.04.svg)](https://www.ubuntu.com/) [![](https://codeclou.github.io/doc/badges/generated/docker-run-as-non-root.svg)](https://docs.docker.com/engine/reference/builder/#/user)

Docker-Image to run phantomjs webdriver standalone.

-----

&nbsp;

### Prerequisites

 * Runs as non-root with fixed UID 10777 and GID 10777. See [howto prepare volume permissions](https://github.com/codeclou/doc/blob/master/docker/README.md).
 * See [howto use SystemD for named Docker-Containers and system startup](https://github.com/codeclou/doc/blob/master/docker/README.md).

-----

&nbsp;

### Usage

```
docker run \
    -i -t \
    -p 4444:4444 \
    codeclou/docker-phantomjs-webdriver-standalone:latest
```

You can link this container which will start on port 4444.


----

&nbsp;

### License, Liability & Support

 * [![](https://codeclou.github.io/doc/docker-warranty-notice.svg?v1)](https://github.com/codeclou/docker-phantomjs-webdriver-standalone/blob/master/LICENSE.md)
 * Dockerfile and Image is provided under [MIT License](https://github.com/codeclou/docker-phantomjs-webdriver-standalone/blob/master/LICENSE.md)
