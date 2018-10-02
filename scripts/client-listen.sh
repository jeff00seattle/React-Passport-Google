#!/usr/bin/env bash

source ./sources/client-pid.sh
CLIENT_PORT=3000

if [ -z "$CLIENT_PID" ]
then
    echo "CLIENT PORT $CLIENT_PORT is not active."
    exit 0
fi

echo "CLIENT PORT $CLIENT_PORT is active: $CLIENT_PID."
