#!/bin/bash

# Exit script if return code != 0
set -e

source /root/functions.sh

# Install any packages
source /root/grafana.sh

# Cleanup
pacman_cleanup
