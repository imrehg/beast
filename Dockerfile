FROM resin/raspberrypi3-alpine

#RUN apt-get update && apt-get -y install fbi wget
RUN apk add --no-cache fbida-fbi wget fontconfig && \
    apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main/armhf/APKINDEX.tar.gz --allow-untrusted terminus-font

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ./prestart.sh && ./start.sh
