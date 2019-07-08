FROM mysql:5.7

RUN apt update && apt install -y wget curl
WORKDIR /root
RUN apt-get install -f

COPY resources/*.cnf /etc/mysql/conf.d/