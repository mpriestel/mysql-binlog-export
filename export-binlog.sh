#!/bin/bash
file="binlogs.txt"

mysql --defaults-extra-file=.mysql -e "SHOW BINARY LOGS;"| sed 's/|/ /' | awk '{print $1}' | tail -n +2> $file

while read line; do
        mysqlbinlog --defaults-extra-file=.mysql --read-from-remote-server --raw $line
        mysqlbinlog $line > readable-binlog/$line.txt
        rm -f $line
done < $file
