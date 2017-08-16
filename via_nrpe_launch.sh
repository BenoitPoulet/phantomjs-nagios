#!/bin/bash
URL=$1
CRIT=$2
WARN=$3
STRING=$4

HOME=/var/lib/nagios
TERM=vt100
PATH=/sbin:/usr/sbin:/usr/local/sbin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
LANG='fr_FR.UTF-8'
export TERM=$TERM
export LANG=$LANG

if [[ $4 == ""  ]];
then
    /usr/lib/nagios/plugins/customs/phantomjs-nagios/check_http_load_time.rb --perf -u "$URL" -c $CRIT -w $WARN
else
    /usr/lib/nagios/plugins/customs/phantomjs-nagios/check_http_load_time.rb --perf -u "$URL" -c $CRIT -w $WARN -S "$STRING"
fi
