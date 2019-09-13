#!/usr/bin/env sh

set -e

command="/bin/astra -p ${ASTRA_PORT} -c ${ASTRA_CONF_FILE} --log /dev/stderr"

if [[ "${ASTRA_DISABLE_OUT}" -eq "1" ]]; then
    command="${command} --no-stdout"
fi

if [[ ! -z "${ASTRA_SCRIPT}" ]]; then
    command="${command} ${ASTRA_SCRIPT}"
fi

echo $command
$($command)
