#!/bin/sh

. $HOME/.profile

cd ansible
AHOME="`pwd`"

psql --host=boston --dbname=va1 --username=user1 --port=5432 -f q.sql --csv -o "$AHOME""/primary.csv"

exit 0

