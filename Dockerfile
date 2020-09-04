FROM overv/openstreetmap-tile-server:latest
ENV LAST_BUILD=2020-09-04

ARG DOWNLOAD_PBF=https://download.geofabrik.de/asia/cambodia-latest.osm.pbf
ARG DOWNLOAD_POLY=http://download.geofabrik.de/asia/cambodia.poly
RUN /run.sh import

ENV THREADS=4
ENV OSM2PGSQL_EXTRA_ARGS="-C 512"
VOLUME /var/lib/mod_tile
