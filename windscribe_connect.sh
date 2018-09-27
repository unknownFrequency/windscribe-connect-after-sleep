#!/bin/bash
# Created by Ruben Thuesen - 2018

case "$(curl -s --max-time 2 -I http://google.com | sed 's/^[^ ]*  *\([0-9]\).*/\1/; 1q')" in
	[23]) echo "Connected";;
	5) echo "Proxy error";;
	*) echo "Not connected" && \
		killall windscribe
	  wait windscribe openvpn 2>/dev/null
	  echo "Killed windscribe and openvpn"
		systemctl start windscribe
		# su -l username -c 'windscribe start;' # If windscribe should be started by non-root user
		windscribe start 
		windscribe connect;;
esac
