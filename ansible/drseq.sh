#!/bin/sh

. $HOME/.profile

cd ansible
AHOME="`pwd`"

psql --host=boston --dbname=va1 --username=user1 --port=5432 -f drseq.sql >> runsql.log 2>&1

exit 0

