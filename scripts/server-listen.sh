#!/usr/bin/env bash

source ./sources/server-pid.sh
SERVER_PORT=4500

if [ -z "$SERVER_PID" ]
then
    echo "SERVER PORT $SERVER_PORT is not active."
    exit 0
fi

echo "SERVER PORT $SERVER_PORT is active: $SERVER_PID."
