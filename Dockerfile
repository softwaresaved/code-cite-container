FROM node
MAINTAINER Matthew Upson

RUN npm install --global getpapers

ENTRYPOINT ["getpapers"]
