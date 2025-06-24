#!/bin/bash
# Script: connect_server.sh
# Purpose: SSH into a remote server using the private key ~/.ssh/school as the 'ubuntu' user

SERVER_IP="my.server.ip.or.hostname"

ssh -i ~/.ssh/school ubuntu@"$SERVER_IP"
chmod +x connect_server.sh
