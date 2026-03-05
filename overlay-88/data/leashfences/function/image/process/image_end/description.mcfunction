# Append blank
function leashfences:image/process/append/blank

data modify storage leashfences:image tellraw append \
  from storage leashfences:image current.description_text

# Append blank
function leashfences:image/process/append/blank

# Append line_break
execute unless score $index.image_data leashfences.image = $length leashfences.image \
  run function leashfences:image/process/append/line_break

# Remove first element from the description
data remove storage leashfences:image current.description[0]
 