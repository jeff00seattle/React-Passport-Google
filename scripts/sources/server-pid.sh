#!/usr/bin/env bash

SERVER_PID_REQ="lsof -i4TCP:4500 -sTCP:LISTEN -n -P | awk 'FNR == 2 { print \$2 }'"
SERVER_PID=$(eval $SERVER_PID_REQ)