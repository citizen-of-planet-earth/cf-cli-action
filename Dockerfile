FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y ca-certificates jq

RUN echo "deb [trusted=yes] https://packages.cloudfoundry.org/debian stable main" > /etc/apt/sources.list.d/cloudfoundry-cli.list
RUN apt-get update
RUN apt-get install -y cf7-cli

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]