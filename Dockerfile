FROM resin/raspberrypi3-debian

RUN apt-get update && apt-get -y install fbi wget

COPY . /usr/src/app
WORKDIR /usr/src/app

CMD ./prestart.sh && ./start.sh
