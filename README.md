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
