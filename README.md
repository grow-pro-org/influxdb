# glab-influxdb
InfluxDB image for RPI (ARM)

## RUN

```

docker run -it --rm -v=/home/pi/volumes/influxdb:/data -p 8086:8086 -p 8085:8085 influxdb

docker run -d --restart always -v=/home/pi/volumes/influxdb:/data -p 8086:8086 -p 8085:8085 influxdb

```
