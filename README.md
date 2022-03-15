# Project for statically served and/or database served vector tiles

Various web projects at the chair revolve around the usage of maps that require access to vector tiles. Freemium services come with strict limits and can lead to vendor lock-in. We thus propose to self-host vector tiles, which calls for testing the implementation of two avenues:

- Statically served tiles as a tree of .pbf files (rather than .mbtiles because using these would require setting g-zip content header on the server-side, which might not be feasible with github pages)
- Dynamically served tiles from mbtiles
  - Pre-rendered or
  - Generated on request

## Reading

- [Maplibre source integration documentation](https://maplibre.org/maplibre-gl-js-docs/style-spec/sources/)
- [List of available resources](https://github.com/mapbox/awesome-vector-tiles)

## Source datasets

- https://data.maptiler.com/downloads/ (under edu license)
- http://download.geofabrik.de/ (non-tiled osm.pbf data)

## Potential tools

### Static tile extraction

- [Tilemaker](https://github.com/systemed/tilemaker/)
- [Planetiler](https://github.com/onthegomap/planetiler) (more specifically, study https://github.com/onthegomap/planetiler-demo)

### Service

- [Tegola](https://tegola.io/)

## Using tilemaker

> Make sure to run tilemaker commands from the repo's root so it can access `/coastline`'s content.

This is an example of how tilemaker can be used to generate a static `.pbf` file tree.

Steps:

1. Populate `/input` with the raw data. Here we use pre-cropped OpenStreetMap's `.osm.pbf` from http://download.geofabrik.de/
2. Populate `/coastline` with unzipped content of https://osmdata.openstreetmap.de/download/water-polygons-split-4326.zip, such that tilemaker can find a file at `coastline/water_polygons.shp`.
3. Configure `config.json` and `process.lua` to handle the input data and decide what layers should be included in the export, the zoom levels to render for each specified layers, the attribution of tags, etc. (See [Tilemaker docs](https://github.com/systemed/tilemaker/tree/master/docs) for more detail)
4. If using a input data file that covers a large region limit to lower zoom levels (i.e. 0-12 or 0-14) or do a bounding-box crop if you desire higher zoom levels. The extraction process is very RAM-intensive.
  - To crop, define the region's bounding box in `crop.sh` and run the script after.
5. Run the render script from `extract.sh`, specifying the desired input file (cropped or original) and a new output folder.
