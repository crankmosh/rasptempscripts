#!/bin/bash

TEMPNOW=`/usr/local/bin/temper-poll -q -f`
/usr/bin/rrdtool update /usr/local/rrd/temps.rrd N:$TEMPNOW
