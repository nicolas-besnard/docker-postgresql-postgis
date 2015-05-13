FROM postgres:9.4
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install -qq -y wget
RUN wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | apt-key add -
RUN apt-get update
RUN apt-get install -y postgresql-9.4-postgis-2.1
