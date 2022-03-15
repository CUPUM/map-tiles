# Render extract from the cropped data
tilemaker 	--input input/montreal-crop.osm.pbf \
			--config montreal/config.json \
			--process montreal/process.lua \
			--output montreal \
			--store store