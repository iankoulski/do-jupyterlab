#!/bin/bash

source .env

if [ "$TO" == "kubernetes" ]; then

	echo ""
	ps -aef | grep port-forward | grep jupyterlab
	PORT_FORWARD_PID=$(ps -aef | grep port-forward | grep jupyterlab | awk '{print $2}')
	if [ "$PORT_FORWARD_PID" == "" ]; then
		echo "Port forwarding is not active"
	else
		echo "Removing PID $PORT_FORWARD_PID ..."
		kill -9 ${PORT_FORWARD_PID}
	fi

else
	echo ""
	echo "Please use the hide command when your target orchestrator is kubernetes"
	echo ""
fi

