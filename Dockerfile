FROM ubuntu
MAINTAINER Antoni Batchelli <tbatchelli@acm.org>

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -yq rsync

EXPOSE 873
VOLUME /from-host
ADD ./run /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]
