FROM ubuntu:18.04
RUN apt-get update -y 
RUN apt-get install -y telnet
RUN apt-get install -y traceroute
RUN apt-get install -y postgresql-client-11
RUN apt-get install mysql-shell
