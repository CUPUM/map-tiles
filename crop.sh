# Do a regional pre-export of the osm.pbf
osmium extract 	--bbox=-74.2044,45.1975,-73.1716,45.8479 \
				--set-bounds \
				--strategy=smart \
				input/quebec-latest.osm.pbf \
				--output input/montreal-crop.osm.pbf