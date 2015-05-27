# Storm Nimbus Docker file and system unit for storm based on centos 7

- if you want to create multiple clusters's nimber node, you just start mutiple service. (one storm cluster only havs one nimbus node)
- the storm cluster id is the service instance id
- the nimbus node will be registed in the skydns, other nodes will use the domain name to connect to nimbus
