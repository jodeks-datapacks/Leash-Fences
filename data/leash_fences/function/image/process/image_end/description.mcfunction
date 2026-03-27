# Append blank
function leash_fences:image/process/append/blank

data modify storage leash_fences:image data.tellraw append \
  from storage leash_fences:image data.current.description_text

# Append blank
function leash_fences:image/process/append/blank

# Append line_break
execute unless score $index.image_data leash_fences.image = $length leash_fences.image \
  run function leash_fences:image/process/append/line_break

# Remove first element from the description
data remove storage leash_fences:image data.current.description[0]
 