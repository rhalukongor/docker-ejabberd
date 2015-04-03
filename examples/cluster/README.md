# Docker Ejabberd Cluster Sample

Sample two node cluster with docker-compose.

# Build test image from this branch

```
$ docker build -t ejabberd:test .
```

# Start container

```
$ cd examples/cluster
$ docker-compose up
$ docker exec -it cluster_second_1 ejabberdctl join_cluster ejabberd@first
```
