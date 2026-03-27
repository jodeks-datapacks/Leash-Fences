# Copy current pixel
data modify storage leash_fences:image data.current.pixel_color set \
  from storage leash_fences:image data.current.image_data[0]
data modify storage leash_fences:image data.current.description_text set \
  from storage leash_fences:image data.current.description[0]

scoreboard players add $index.image_data leash_fences.image 1

# Calculate column
scoreboard players operation $index.column leash_fences.image = $index.image_data leash_fences.image
scoreboard players operation $index.column leash_fences.image %= $width leash_fences.image

# Calculate row
scoreboard players operation $index.row leash_fences.image = $index.image_data leash_fences.image
scoreboard players operation $index.row leash_fences.image /= $width leash_fences.image

# Append start spacing
execute if score $index.column leash_fences.image matches 1 run \
  function leash_fences:image/process/append/blank

# Append colored pixel
execute unless data storage leash_fences:image data.current{pixel_color: ''} run \
  function leash_fences:image/process/append/pixel
# Append background pixel
execute if data storage leash_fences:image data.current{pixel_color: ''} run \
  function leash_fences:image/process/append/background

# Append description
execute if score $index.column leash_fences.image matches 0 run \
    function leash_fences:image/process/image_end/description

# Remove first element from the image_data array
data remove storage leash_fences:image data.current.image_data[0]
# Loop over rows
execute if score $index.row leash_fences.image < $height leash_fences.image run \
  function leash_fences:image/process/loop_over_image_data
 