/// Lays out tiles based on the shape and size of the given object.

/* arguments
argument0 -- the width of the object.
argument1 -- the heigth of the object.
argument2 -- the x-spacing between tiles
argument3 -- the y-spaicng between tiles
argument4 -- the y offset of the tile set being drawn, separating the two sets.
argument5 -- the layer of the tiles.
*/

var x_size, y_size, x_scale, y_scale;

// If the width of the object is less than two tiles...
if (argument0 < argument2 * 2)
{
    // Size is half of the width.
    x_size = 0.5 * argument0;
}
else
{
    // The size of each segment is the size of the tile, minus the remainder of the width
    x_size = argument2 - (argument0 mod argument2);    
}

// The scale of each tile is the size divided by the original size.
x_scale = x_size / argument2;

// Determines the y size and scales similarly to the above.
if (argument1 < argument3 * 2)
{
    y_size = 0.5 * argument1;
}
else
{
    y_size = argument3 - (argument1 mod argument3);
}

y_scale = y_size / argument3;

// Iterates along the width and height of the object by the size of the tile.
for (var i = 0; i < argument0; i += x_size)
{
    for (var j = 0; j < argument1; j += y_size)
    {
        var tile_x, tile_y;
        
        // Determines the x coordinate of the tiles within the tile texture.
        if (i == 0)
            tile_x = 0;
        else if (i + x_size < argument0)
            tile_x = argument2;
        else
            tile_x = argument2 * 2;
        
        // Determines the y coordinate of the tiles within the tile texture.
        if (j == 0)
            tile_y = 0;
        else if (j + y_size < argument1)
            tile_y = argument3;
        else
            tile_y = argument3 * 2;
               
        // Adds a new tile to the scene based on the parameters derived above.
        var new_tile = tile_add(bg_tiles_main, tile_x, tile_y + argument4, argument2, argument3, i + x, j + y, argument5);
        
        // Scales the newly created tile.
        tile_set_scale(new_tile, x_scale, y_scale);
    }
}
