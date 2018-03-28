FROM node
MAINTAINER Matthew Upson <matthew.a.upson@gmail.com>
LABEL version="0.1.0"

RUN npm install --global getpapers

ENTRYPOINT ["getpapers"]
