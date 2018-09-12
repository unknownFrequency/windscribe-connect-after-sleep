#!/bin/bash
# Created by Ruben Thuesen - 2018

case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
	[23]) echo "Connected";;
	5) echo "Proxy error";;
	*) echo "Not connected"
		pkill windscribe
		sleep 1
		pkill openvpn
		sleep 1
		windscribe start
		sleep 1
		windscribe connect && echo "Windscribe connected && echo "Windscribe connected" > ~/Documents/windscribe.log";;
esac
