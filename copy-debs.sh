#!/bin/bash -ex
docker run -d --cidfile docker.cid $NAME:${VERSION}-${BUILD} bash
CONTAINER_ID=`cat docker.cid`
set +e
docker cp $CONTAINER_ID:/root/python27-virtualenv_1.11.6-${BUILD}_amd64.deb .
docker cp $CONTAINER_ID:/root/Python-$VERSION/python27_$VERSION-${BUILD}_amd64.deb .
docker cp $CONTAINER_ID:/root/setuptools-3.5.1/python27-setuptools_3.5.1-${BUILD}_amd64.deb .
set -e
docker kill $CONTAINER_ID
rm docker.cid
