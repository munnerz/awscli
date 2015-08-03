FROM debian

RUN apt-get update && \
	apt-get install --no-install-recommends -yq python python-pip zip git && \
	pip install awscli && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && rm -rf /tmp