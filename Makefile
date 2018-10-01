#  Makefile
#
#  Copyright (c) 2018, DocuSign, Inc
#  All rights reserved.
#

CLIENT_PORT := $(shell jq .clientPort ./config/ports.json)
SERVER_PORT := $(shell jq .serverPort ./config/ports.json)

eslint-airbnb-install:
	@echo "======================================================"
	@echo "eslint-airbnb-install"
	@echo "======================================================"
	npm install --dev eslint
	npx install-peerdeps --dev eslint-config-airbnb

install:
	@echo "======================================================"
	@echo "install"
	@echo "======================================================"
	npm install --verbose

ports:
	@echo "======================================================"
	@echo "ports"
	@echo "======================================================"
	@echo CLIENT_PORT=$(CLIENT_PORT)
	@echo SERVER_PORT=$(SERVER_PORT)

start-dev: client-kill server-kill
	@echo "======================================================"
	@echo "start-dev"
	@echo "======================================================"
	npm run start-dev

stop-dev: client-kill server-kill
	@echo "======================================================"
	@echo "stop-dev"
	@echo "======================================================"

client-listen:
	@echo "======================================================"
	@echo "client-listen"
	@echo "======================================================"
	@echo $(shell ./scripts/client-listen.sh)

client-kill:
	@echo "======================================================"
	@echo "client-kill"
	@echo "======================================================"
	@echo $(shell ./scripts/client-kill.sh)

server-listen:
	@echo "======================================================"
	@echo "server-listen"
	@echo "======================================================"
	@echo $(shell ./scripts/server-listen.sh)

server-kill:
	@echo "======================================================"
	@echo "server-kill"
	@echo "======================================================"
	@echo $(shell ./scripts/server-kill.sh)

list:
	@echo "======================================================"
	@echo list targets
	@echo "======================================================"
	cat Makefile | grep "^[a-z]" | awk '{print $$1}' | sed "s/://g" | sort