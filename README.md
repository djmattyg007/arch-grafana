**Application**

[grafana](https://grafana.com/)

**Description**

Grafana is a data visualisation tool that lets you create many kinds of charts and graphs while drawing upon data from several sources such as Graphite, InfluxDB, OpenTSDB and ElasticSearch. Graphs can then be composed into dashboards, providing an easy to use interface for monitoring and alerting based on all of your available data.

**Build notes**

Latest stable grafana release, using the 'grafana' Arch Linux package.

**Usage**

```
docker run \
    --net="host" \
    --rm=true \
    --name=<container name> \
    -v <path for Grafana data>:/var/lib/grafana \
    -v <path for Grafana logs>:/var/log/grafana \
    -v /etc/localtime:/etc/localtime:ro \
    djmattyg007/arch-grafana
```

Please replace all user variables in the above command defined by <> with the correct values.

**Access application**

Connect to php-fpm using its TCP socket on `<host ip>:3000`

**Example**

```
docker run \
    --net="host" \
    --rm=true \
    --name=grafana \
    -v /srv/http:/srv/http \
    -v /var/lib/grafana:/var/lib/grafana \
    -v /var/log/grafana:/var/log/grafana \
    -v /etc/localtime:/etc/localtime:ro \
    djmattyg007/arch-grafana
```
