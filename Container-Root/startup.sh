#!/bin/bash

# Container startup script
echo "Container-Root/startup.sh executed"

start-notebook.py --NotebookApp.token="$JUPYTER_TOKEN"

#while true; do date; sleep 10; done

