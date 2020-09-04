#!/bin/bash

docker volume create openstreetmap-data

docker run \
	-e UPDATES=enabled \
    -e DOWNLOAD_PBF=http://download.geofabrik.de/south-america/brazil/sul-latest.osm.pbf \
    -e DOWNLOAD_POLY=http://download.geofabrik.de/south-america/brazil/sul.poly \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    overv/openstreetmap-tile-server \
    import