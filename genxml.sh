#!/bin/bash

rrdtool xport -s now-3h -e now --step 300 \
DEF:a=/usr/local/rrd/temps.rrd:temps1:AVERAGE \
XPORT:a:Garage > /var/www/data/temps3h.xml

rrdtool xport -s now-24h -e now --step 900 \
DEF:a=/usr/local/rrd/temps.rrd:temps1:AVERAGE \
XPORT:a:Garage > /var/www/data/temps24h.xml

rrdtool xport -s now-8d -e now --step 7200 \
DEF:a=/usr/local/rrd/temps.rrd:temps1:AVERAGE \
XPORT:a:Garage > /var/www/data/temps1w.xml
