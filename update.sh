#!/usr/bin/env bash


if [ -z "$1" ]; then
	echo "Please provide your steam login name as the first argument."
	exit
fi

touch ${STEAMAPPDIR}/.update


# Hack to remove cached auth details that stops the password prompt from appearing
if [ -f ${STEAMDIR}/config/config.vdf ]; then
	sed -i '/"ConnectCache"/,/}/d' ${STEAMDIR}/config/config.vdf
fi

PID=$(pidof "${STEAMAPPDIR}/linux/starbound_server")

if [ -n "$PID" ]; then
	kill "$PID"
fi

${STEAMCMDDIR}/steamcmd.sh \
	+login "$1" \
	+force_install_dir ${STEAMAPPDIR}/ \
	+app_update ${STEAMAPPID} validate \
	+quit \
	&& rm ${STEAMAPPDIR}/.update
exit