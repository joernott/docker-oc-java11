#!/bin/bash
set -e
set -x
curl -sSo src/tmp/install/functions.sh https://raw.githubusercontent.com/joernott/docker-oc-install-library/master/install_functions.sh
source src/tmp/install/functions.sh

patch_dockerfile Dockerfile
docker build --no-cache=true -t registry.ott-consult.de/oc/java10:latest .
docker push registry.ott-consult.de/oc/java10:latest
