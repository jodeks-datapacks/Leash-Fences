# Copy current pixel
data modify storage leashfences:image current.pixel_color set \
  from storage leashfences:image current.image_data[0]
data modify storage leashfences:image current.description_text set \
  from storage leashfences:image current.description[0]

scoreboard players add $index.image_data leashfences.image 1

# Calculate column
scoreboard players operation $index.column leashfences.image = $index.image_data leashfences.image
scoreboard players operation $index.column leashfences.image %= $width leashfences.image

# Calculate row
scoreboard players operation $index.row leashfences.image = $index.image_data leashfences.image
scoreboard players operation $index.row leashfences.image /= $width leashfences.image

# Append start spacing
execute if score $index.column leashfences.image matches 1 run \
  function leashfences:image/process/append/blank

# Append colored pixel
execute unless data storage leashfences:image current{pixel_color: ''} run \
  function leashfences:image/process/append/pixel
# Append background pixel
execute if data storage leashfences:image current{pixel_color: ''} run \
  function leashfences:image/process/append/background

# Append description
execute if score $index.column leashfences.image matches 0 run \
    function leashfences:image/process/image_end/description

# Remove first element from the image_data array
data remove storage leashfences:image current.image_data[0]
# Loop over rows
execute if score $index.row leashfences.image < $height leashfences.image run \
  function leashfences:image/process/loop_over_image_data
 