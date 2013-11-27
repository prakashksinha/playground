#!/bin/bash

set -v
set -x

if [ $# -lt 1 ]; then
  echo "Usage: $0 [ddl|dml|purge|load]"
  exit
fi

case "$1" in
  'ddl')
  echo "creating database..."
  sleep 1
  mysql < streetofwalls_ddl.sql -u root -p
  ;;
  'dml')
  echo "creating tables..."
  sleep 1
  mysql < streetofwalls_dml.sql -u root -p
  ;;
  'purge')
  echo "purging schema..."
  sleep 1
  mysql < streetofwalls_purge.sql -u root -p
  ;;
  'load')
  echo "loading data..."
  sleep 1
  mysqlimport --local streetofwalls streetofwalls_user --fields-terminated-by="," --ignore-lines=1 -u streetofwalls -pstr33t0fw@!!2
  ;;
esac
