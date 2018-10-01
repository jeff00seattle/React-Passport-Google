#!/usr/bin/env bash

CLIENT_PID_REQ="lsof -i4TCP:3000 -sTCP:LISTEN -n -P | awk 'FNR == 2 { print \$2 }'"
CLIENT_PID=$(eval $CLIENT_PID_REQ)