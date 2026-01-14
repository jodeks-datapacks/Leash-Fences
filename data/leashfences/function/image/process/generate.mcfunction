#> leashfences:image/process/generate
#
# This function generates the image data.

data modify storage leashfences:image current.image_data set from storage leashfences:image image_data
data modify storage leashfences:image current.description set from storage leashfences:image description
data modify storage leashfences:image current.pixel_character set from storage leashfences:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data leashfences.image 0
# Set width
execute store result score $width leashfences.image run data get storage leashfences:image width
# Set height
execute store result score $height leashfences.image run data get storage leashfences:image height
# Set length
scoreboard players operation $length leashfences.image = $width leashfences.image
scoreboard players operation $length leashfences.image *= $height leashfences.image
# Clear remaining entries in tellraw
data remove storage leashfences:image tellraw

# Add spacing on top
function leashfences:image/process/append/line_break
# Loop over image data
function leashfences:image/process/loop_over_image_data
# Add spacing on bottom
function leashfences:image/process/append/line_break