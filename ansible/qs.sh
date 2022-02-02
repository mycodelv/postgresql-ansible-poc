#!/bin/sh

. $HOME/.profile

cd ansible
AHOME="`pwd`"

psql --host=houston --dbname=va1 --username=user1 --port=5433 -f q.sql --csv -o "$AHOME""/standby.csv"

exit 0

