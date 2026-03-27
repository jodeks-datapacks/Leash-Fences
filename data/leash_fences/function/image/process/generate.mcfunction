#> leash_fences:image/process/generate
#
# This function generates the image data.

data modify storage leash_fences:image data.current.image_data set from storage leash_fences:image data.image_data
data modify storage leash_fences:image data.current.description set from storage leash_fences:image data.description
data modify storage leash_fences:image data.current.pixel_character set from storage leash_fences:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data leash_fences.image 0
# Set width
execute store result score $width leash_fences.image run data get storage leash_fences:image data.width
# Set height
execute store result score $height leash_fences.image run data get storage leash_fences:image data.height
# Set length
scoreboard players operation $length leash_fences.image = $width leash_fences.image
scoreboard players operation $length leash_fences.image *= $height leash_fences.image
# Clear remaining entries in tellraw
data remove storage leash_fences:image data.tellraw

# Add spacing on top
function leash_fences:image/process/append/line_break
# Loop over image data
function leash_fences:image/process/loop_over_image_data
# Add spacing on bottom
function leash_fences:image/process/append/line_break