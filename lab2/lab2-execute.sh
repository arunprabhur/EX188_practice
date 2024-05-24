#!/bin/bash

source ../common.sh

echo "Starting script"
prompt

podman rmi -af

execute "Create Image" "podman build -t mylab2image:1.0 -f Containerfile"
execute "List Images" "podman images"
execute "Run a container in background as detached mode" "podman run -d --name mylab2container mylab2image:1.0"
execute "List all running containers" "podman ps"
execute "Stop running a container" "podman stop mylab2container"
execute "remove a stopped container" "podman rm mylab2container"
execute "Remove a image from local repo" "podman rmi mylab2image:1.0"

endofscript

echo "End of script"
