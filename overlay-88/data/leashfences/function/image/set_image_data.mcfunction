#> leashfences:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage leashfences:image image_data  
# @writes storage leashfences:image width  
# @writes storage leashfences:image height  
# @writes storage leashfences:image background_color  
# @writes storage leashfences:image description  
# @writes storage leashfences:image pixel_character.blank  
# @writes storage leashfences:image pixel_character.chat  
# @writes storage leashfences:image pixel_character.lore

data remove storage leashfences:image image_data
data remove storage leashfences:image width
data remove storage leashfences:image height
data remove storage leashfences:image background_color
data remove storage leashfences:image description

$data modify storage leashfences:image image_data set value $(image_data)
$data modify storage leashfences:image width set value $(width)
$data modify storage leashfences:image height set value $(height)
$data modify storage leashfences:image background_color set value "$(background_color)"
$data modify storage leashfences:image description set value $(description)

data modify storage leashfences:image pixel_character.blank set value "　"
data modify storage leashfences:image pixel_character.pixel set value "▌▌"
data modify storage leashfences:image pixel_character.line_break set value '\n'

function leashfences:image/process/generate
