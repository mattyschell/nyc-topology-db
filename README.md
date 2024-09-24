# nyc-topology-db

What if we added New York City geographies to a PostGIS topology?  Could we build a reverse geocoder?

Friends, this is our reverse goat, our rules, the trick is never to be afraid.

![https://en.wikipedia.org/wiki/Goat#/media/File:Hausziege_04.jpg](reversegoat.png?raw=true)

## Setup 

We will create a database named "nyctopo."  We'll load the data under \data into a schema named "nyc." 

Then we'll run a sibling set of topology data loading from \topo-data. This will create a topology named "gotham."  For each dataset loaded we will add a column named "topo," populated with topogeom pointers to the gotham primitives.    

```shell
$ export NYCTOPOPASSWORD==<samplepassword1>
$ export PGUSER=****
$ export PGPASSWORD=****
$ export PGHOST=****
$ export PGDATABASE=postgres
$ ./setup-nyctopo.sh
```

## Test 

```shell
$ export PGUSER=nyctopo
$ export PGPASSWORD=<samplepassword1>
$ export PGHOST=****
$ export PGDATABASE=nyctopo
$ ./test-nyctopo.sh
```

## Sample Application Setup

We'll attempt to meet the requirements of applications with database views.  More thinking required here on schemas, users, and privileges. 

```shell
$ export PGUSER=nyctopo
$ export PGPASSWORD=<samplepassword1>
$ export PGHOST=****
$ export PGDATABASE=nyctopo
$ ./setup-mobile_latlong.sh
```


## Teardown 

```shell
$ export NYCTOPOPASSWORD==<samplepassword1>
$ export PGUSER=****
$ export PGPASSWORD=****
$ export PGHOST=****
$ export PGDATABASE=postgres
$ ./teardown-nyctopo.sh
```



