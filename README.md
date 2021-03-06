# osm-toolbox

## How to start docker container

    - Recommended
    $ docker run -it --rm -v $(pwd):/root/data toshelp/osm-toolbox:2.0 bash

    - Experimental 
    $ docker run -it --rm -v $(pwd):/root/data toshelp/osm-toolbox:2.0-tilemaker-boost-1.76 bash

    - Alternative (e.g. tilemaker)
    $ docker run -it --rm -v $(pwd):/root/data toshelp/osm-toolbox:2.0 tilemaker \
      --input ./data/"your.osm.pbf file" \
      --output ./data/"your .mbiles" \
      --config ./tilemaker/resources/config-openmaptiles.json \
      --process ./tilemaker/resources/process-openmaptiles.lua

## Included tools
- [GDAL](https://gdal.org/)
- [osmosis](https://github.com/openstreetmap/osmosis)
- [osmium-tool](https://osmcode.org/osmium-tool/)
- [osmctools](https://github.com/ramunasd/osmctools)
- [tilemaker](https://github.com/systemed/tilemaker)
- [tippecanoe](https://github.com/mapbox/tippecanoe)
- [spritezero-cli](https://github.com/mapbox/spritezero-cli)  
- [spritezero-png](https://github.com/cs09g/spritezero-png)
- [node-fontnik](https://github.com/mapbox/node-fontnik)
- [MBUtil](https://github.com/mapbox/mbutil)
- [vt2geojson](https://github.com/mapbox/vt2geojson)
