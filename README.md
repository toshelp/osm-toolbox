# osm-toolbox

## How to docker container start

    docker run -it --rm -v $(pwd)/data:/root/data toshelp/osm-toolbox:1.0 bash

## Included tools
- [osmium-tool](https://osmcode.org/osmium-tool/)
- [osmctools](https://github.com/ramunasd/osmctools)
- [tilemaker](https://github.com/systemed/tilemaker)
- [tippecanoe](https://github.com/mapbox/tippecanoe)
- [spritezero-cli](https://github.com/mapbox/spritezero-cli)  
##### Usage

    spritezero [output filename] [input directory]

      --retina      shorthand for --ratio=2
      --ratio=[n]   pixel ratio
      --unique      map identical images to multiple names

- [spritezero-png](https://github.com/cs09g/spritezero-png)
##### Usage

    spritezeropng -o <out_folder> <path_for_sprite> <path_for_sprite@2x>

- [node-fontnik](https://github.com/mapbox/node-fontnik)
##### Usage

    build-glyphs <fontstack path> <output dir>
