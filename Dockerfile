FROM resin/raspberrypi3-alpine

#RUN apt-get update && apt-get -y install fbi wget
RUN apk add --no-cache fbida-fbi wget fontconfig

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ./prestart.sh && ./start.sh
