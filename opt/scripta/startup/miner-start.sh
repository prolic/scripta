#!/bin/bash
cgminer=ps -ef |grep cgminer |grep -v grep 
if [ "$cgminer" == "" ]
	then 
/usr/bin/screen -dmS cgminer /opt/scripta/bin/cgminer -c /opt/scripta/etc/miner.conf
fi
sleep 1
echo `pidof cgminer` > /opt/scripta/var/cgminer.pid