FROM ubuntu:18.04

# Updates
RUN apt-get update -y 

# Etc
RUN apt-get install -y wget
RUN apt-get install -y gnupg2
RUN apt-get install -y lsb-release && apt-get clean all
RUN apt-get install -y vim

# Networking
RUN apt-get install -y telnet
RUN apt-get install -y traceroute

# MySQL client
RUN apt-get install -y mysql-client

# Postgres client
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update -y
RUN apt-get install -y postgresql-client-11
