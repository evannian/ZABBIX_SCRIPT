#!/bin/bash

item=$1
ip=127.0.0.1
port=11211
echo "stats" | nc $ip $port 2>/dev/null | grep "STAT $item\b" | awk '{print $3}'
