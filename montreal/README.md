## Using tilemaker

This is an example of how tilemaker can be used to generate a static `.pbf` file tree.

Steps:

1. Get OpenStreetMap data as `.osm.pbf` from http://download.geofabrik.de/
2. Configure `config.json` and `process.lua` to handle the input data and decide what layers should be included in the export, the zoom levels to render for each specified layers, the attribution of tags, etc. (See [Tilemaker docs](https://github.com/systemed/tilemaker/tree/master/docs) for more detail)
3. If using a input data file that covers a large region limit to lower zoom levels (i.e. 0-12 or 0-14) or do a bounding-box crop if you desire higher zoom levels. The rendering process is very RAM-intensive.
  - To crop, define the region's bounding box in `crop.sh` and run the bash script after.
4 - Run the render script from `render.sh`, specifying the desired input file (cropped or original) and a new output folder.