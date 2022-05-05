FROM ubuntu:18.04

# Updates
RUN apt-get update -y && \

# Etc
# apt install -y curl && \
# apt-get install -y wget  && \
# apt-get install -y gnupg2 && \
# apt-get install -y lsb-release && apt-get clean all && \
# apt-get install -y vim && \

# # Networking
# apt-get install -y telnet && \
# apt-get install -y traceroute && \

# # MySQL client
apt-get install -y mysql-client && \

# # Postgres client
# sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
# wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
# apt-get update -y && \
# apt-get install -y postgresql-client-11
