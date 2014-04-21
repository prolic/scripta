#!/bin/bash
cgminer=`ps -ef |grep cgminer |grep -v grep` 
if [ "$cgminer" == "" ]
	then 
	echo "cgminer is not running, starting now..."
/usr/bin/screen -dmS cgminer /usr/local/bin/cgminer -c /opt/scripta/etc/miner.conf
fi
sleep 1
echo `pidof cgminer` > /opt/scripta/var/cgminer.pid