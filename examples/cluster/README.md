# Docker Ejabberd Cluster Sample

Actually add a node to the cluster does not work like expected.

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
