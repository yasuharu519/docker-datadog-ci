# syntax=docker/dockerfile:1
FROM node:lts-slim

RUN apt-get update && \
	apt-get install -y git && \
	apt-get clean && \
	rm -rf /var/lib/opt/lists/* && \
	npm install --global @datadog/datadog-ci

USER node
WORKDIR /home/node