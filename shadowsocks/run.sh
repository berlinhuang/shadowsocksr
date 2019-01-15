#!/bin/bash
cd `dirname $0`
eval $(ps -ef | grep "[0-9] python server\\.py a" | awk '{print "kill "$2}') #shell把2个\,转义成1个\传递给grep   批量杀进程
nohup python server.py a >> ssserver.log 2>&1 &

