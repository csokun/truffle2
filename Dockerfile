FROM node:6.11.3-alpine
RUN apk update && \
	apk upgrade && \
	apk add --no-cache git python make g++ bash && \
	npm i truffle@2 -g && \
  npm cache clean -f && \
	apk del git python make g++
CMD ["/bin/bash"]
