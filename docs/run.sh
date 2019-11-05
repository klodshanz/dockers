#!/bin/bash

docker run -it \
--volume=/home/vagrant/dockers/docs/site/:/root/site \
docs

