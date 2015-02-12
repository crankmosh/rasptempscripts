#!/bin/bash

/usr/bin/rrdtool graph /var/www/last2.png --title "Temperature (2 hrs)" -w 500 -h 120 -a PNG --slope-mode --start -7200 --end now --vertical-label "temperature (F)" DEF:temps1=/usr/local/rrd/temps.rrd:temps1:AVERAGE LINE1:temps1#ff0000:"temp 1" GPRINT:temps1:LAST:'Current \: %3.2lf'

/usr/bin/rrdtool graph /var/www/lastday.png --title "Temperature (day)" -w 500 -h 120 -a PNG --slope-mode --start -86400 --end now --vertical-label "temperature (F)" DEF:temps1=/usr/local/rrd/temps.rrd:temps1:AVERAGE LINE1:temps1#ff0000:"temp 1" GPRINT:temps1:LAST:'Current \: %3.2lf'

/usr/bin/rrdtool graph /var/www/lastweek.png --title "Temperature (week)" -w 500 -h 120 -a PNG --slope-mode --start -604800 --end now --vertical-label "temperature (F)" DEF:temps1=/usr/local/rrd/temps.rrd:temps1:AVERAGE LINE1:temps1#ff0000:"temp 1" GPRINT:temps1:LAST:'Current \: %3.2lf'

/usr/bin/rrdtool graph /var/www/lastmonth.png --title "Temperature (month)" -w 500 -h 120 -a PNG --slope-mode --start -2629740 --end now --vertical-label "temperature (F)" DEF:temps1=/usr/local/rrd/temps.rrd:temps1:AVERAGE LINE1:temps1#ff0000:"temp 1" GPRINT:temps1:LAST:'Current \: %3.2lf'

/usr/bin/rrdtool graph /var/www/lastyear.png --title "Temperature (year)" -w 500 -h 120 -a PNG --slope-mode --start -31556900 --end now --vertical-label "temperature (F)" DEF:temps1=/usr/local/rrd/temps.rrd:temps1:AVERAGE LINE1:temps1#ff0000:"temp 1" GPRINT:temps1:LAST:'Current \: %3.2lf'
