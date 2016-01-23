# docker-mysql-init

Simple example to show how to create a custom mysql docker image. The standard
library mysql image is used as a base image. The custom db is initialized using
an init sql script. The script is downloaded from a remote server using wget.

## How to run

Build and run the image:

```shell
git clone https://github.com/britter/docker-mysql-init.git
cd docker-mysql-init
docker build -t custom-mysql .
docker run -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 3307:3306 -d custom-mysql
```

Connecting to the containerized database:

```shell
mysql -u root -h <docker-host-ip> -P 3307
```
