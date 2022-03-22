FROM balenalib/raspberrypi3-debian:build


RUN install_packages gnupg2 curl wget lsb-release
RUN wget -qO- https://repos.influxdata.com/influxdb.key | sudo apt-key add - &&\
    . /etc/os-release &&\
    echo "deb https://repos.influxdata.com/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/influxdb.list

RUN install_packages influxdb

COPY influxdb.conf /etc/influxdb/influxdb.conf

ADD run.sh /run.sh
RUN chmod +x /*.sh

ENV PRE_CREATE_DB **None**

VOLUME ["/data"]

CMD ["/run.sh"]
