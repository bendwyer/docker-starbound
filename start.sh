#!/usr/bin/env bash

if [ -f ${STEAMAPPDIR}/linux/starbound_server ]; then
  cd ${STEAMAPPDIR}/linux
  ./starbound_server
fi

while [ -f ${STEAMAPPDIR}/.update ]; do
	sleep 10
done

exit