#!/bin/bash

sudo docker run -d --name elasticsearch-container -v $(pwd)/elas1:/usr/share/elasticsearch/data -p 9200:9200 -p 9300:9300 -e "xpack.security.enabled=false" -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.11.1

printf "✅ Elastic Container OK ✅ \n"

sudo docker ps 
