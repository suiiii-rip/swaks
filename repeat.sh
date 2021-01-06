#!/bin/bash
set -ex

# all variables need to be set via environment

while true
do
  coolDown=$(shuf -i ${SLEEP_LOWER}-${SLEEP_UPPER} -n 1)
  sleep $coolDown

  swaks -f $MAIL_FROM -t $MAIL_TO -s $MAIL_SERVER -p $MAIL_PORT -a -au $MAIL_USER -ap $MAIL_PASSWORD -tlsc
done
