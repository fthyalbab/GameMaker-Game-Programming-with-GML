/* Declares the x and y ranges for places to stay within the bounds of the room. */
var x_min, y_min, x_max, y_max;

x_min = sprite_xoffset * image_xscale;
y_min = sprite_yoffset * image_yscale;

x_max = room_width - (image_xscale * (sprite_width  - sprite_xoffset));
y_max = room_height - (image_yscale * (sprite_height - sprite_yoffset));

// Set the x and y to random position within the range.
x = random_range(x_min, x_max);
y = random_range(y_min, y_max);

/* If the object is within the bounds of the mouse, the Mouse Enter Event is triggered; otherwise, the Mouse Leave Event is triggered. */
if (position_meeting(mouse_x, mouse_y, self))
{
    event_perform(ev_mouse, ev_mouse_enter);
}
else
{
    event_perform(ev_mouse, ev_mouse_leave);
}
