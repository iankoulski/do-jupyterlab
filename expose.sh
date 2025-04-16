#!/bin/bash

source .env

if [ "$TO" == "kubernetes" ]; then

	kubectl port-forward -n ${NAMESPACE} svc/${IMAGE} ${PORT_EXTERNAL}:${PORT_EXTERNAL} &

	echo ""
	echo "JupyterLab port-forwarded to"
	echo "http://localhost:${PORT_EXTERNAL}"
	echo ""
else
	echo ""
	echo "Please use the expose command when your target orchestrator is kubernetes"
	echo ""
fi
