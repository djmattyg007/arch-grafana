#!/bin/bash

# Exit script if return code != 0
set -e

echo "Install grafana packages..."
pacman -S --noconfirm --noprogressbar --color=never grafana 
mkdir /var/lib/grafana /var/log/grafana

echo "Add Grafana group and user"
groupadd -g 207 --system grafana
useradd -d /var/lib/grafana -g grafana -N --system -u 207 grafana

echo "Configure Grafana"
sed -i -r 's/^;? ?logs =.*$/logs = \/var\/log\/grafana/' /etc/grafana.ini
