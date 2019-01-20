#!/bin/bash

if test "$1" = "-c"
then
    pkill mpg123
elif test "$1" = "-o"
then
    sudo touch /var/log/rockfm.log
    sudo chown $USER /var/log/rockfm.log
    mpg123 http://nashe.streamr.ru/rock-64.mp3 2>&1 | cat >> /var/log/rockfm.log &
else
    mpg123 http://nashe.streamr.ru/rock-64.mp3
fi

exit 0
