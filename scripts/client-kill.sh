#!/usr/bin/env bash

source ./sources/client-pid.sh

CLIENT_PORT=3000

if [ -z "$CLIENT_PID" ]
then
    echo "CLIENT PORT $CLIENT_PORT is not active."
    exit 0
fi

echo "CLIENT PORT $CLIENT_PORT is active: $CLIENT_PID"

if [ ! -z "$CLIENT_PID" ]
then
    kill ${CLIENT_PID}
fi

source ./server-listen.sh
if [ ! -z "$CLIENT_PID" ]
then
    echo "CLIENT PORT $CLIENT_PORT was killed."
    exit 0
fi

echo "CLIENT PORT $CLIENT_PORT is was not killed and still active: $CLIENT_PID"
exit 1