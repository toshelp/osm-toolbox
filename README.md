# osm-toolbox

## How to start docker container

    - Recommended
    $ docker run -it --rm -v $(pwd):/root/data toshelp/osm-toolbox:1.5 bash

    - Experimental (Using luajit with tilemaker)
    $ docker run -it --rm -v $(pwd):/root/data toshelp/osm-toolbox:1.5-tilemaker-luajit bash

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
