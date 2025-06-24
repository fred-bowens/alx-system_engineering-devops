#!/bin/bash

SERVER_IP="my.server.ip.or.hostname"

ssh -i ~/.ssh/school ubuntu@"$SERVER_IP"
chmod +x connect_server.sh
