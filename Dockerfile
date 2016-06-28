FROM ubuntu:14.04
MAINTAINER Stephen Olesen <slepp@slepp.ca>

RUN apt-get update && apt-get install -y \
		build-essential \
		devscripts \
		wget \
	&& apt-get clean \
	&& rm -rf /var/lib/apt/lists/*
WORKDIR /tmp/build
VOLUME /export

COPY build.sh README.md /
ENTRYPOINT ["/build.sh"]
