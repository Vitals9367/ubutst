FROM ubuntu:18.04

# Updates
RUN apt-get update -y 

# Networking
RUN apt-get install -y telnet
RUN apt-get install -y traceroute

# MySQL client
RUN apt-get install mysql-shell

# Postgres client
RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
RUN sudo apt-get update
RUN apt-get install -y postgresql-client-11
