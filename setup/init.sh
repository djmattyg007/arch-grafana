#!/bin/bash

chmod -R 0750 /var/lib/grafana /var/log/grafana

cd /usr/share/grafana
exec chpst -u grafana:grafana /usr/bin/grafana-server --config=/etc/grafana.ini
