#!/bin/bash
set -e
set -x

source /tmp/install/functions.sh

install_software ca-certificates java-11-openjdk
cleanup unzip
