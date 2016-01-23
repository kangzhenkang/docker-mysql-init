FROM mysql:5.6.28

RUN apt-get update && apt-get install -y --force-yes wget --no-install-recommends && rm -rf /var/lib/apt/lists/* \
  && wget -P /docker-entrypoint-initdb.d --no-check-certificate https://raw.githubusercontent.com/britter/docker-mysql-init/master/sql/init.sql \
  && apt-get -y autoremove wget
