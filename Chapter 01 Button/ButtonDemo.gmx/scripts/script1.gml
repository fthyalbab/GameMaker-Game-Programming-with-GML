/// Moves an object to a random position
x = random_range(sprite_get_xoffset(sprite_index), room_width - sprite_width + sprite_get_xoffset(sprite_index));
y = random_range(sprite_get_yoffset(sprite_index), room_height - sprite_height + sprite_get_yoffset(sprite_index));
