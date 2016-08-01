#!/usr/bin/env bash

if [ -f /starbound/linux/starbound_server ]; then
  cd /starbound/linux
  ./starbound_server
fi

while [ -f /.update ]; do
	sleep 10
done

exit
