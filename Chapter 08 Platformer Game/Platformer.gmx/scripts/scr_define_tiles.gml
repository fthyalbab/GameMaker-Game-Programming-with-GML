/// Lays out tiles based on the shape and size of the given object.

/* arguments
argument0 -- the width of the object.
argument1 -- the heigth of the object.
argument2 -- the x-spacing between tiles
argument3 -- the y-spaicng between tiles
argument4 -- the y offset of the tile set being drawn, separating the two sets.
argument5 -- the layer of the tiles.
*/

var obj_w = argument0;
var obj_h = argument1;
var tile_xspace = argument2;
var tile_yspace = argument3;
var tile_yoffset = argument4;
var tile_layer = argument5;

var x_size, y_size, x_scale, y_scale;

// If the width of the object is less than two tiles...
if (obj_w < tile_xspace * 2)
{
    // Size is half of the width.
    x_size = 0.5 * obj_w;
}
else
{
    // The size of each segment is the size of the tile, minus the remainder of the width
    x_size = tile_xspace - (obj_w mod tile_xspace);    
}

// The scale of each tile is the size divided by the original size.
x_scale = x_size / tile_xspace;

// Determines the y size and scales similarly to the above.
if (obj_h < tile_yspace * 2)
{
    y_size = 0.5 * obj_h;
}
else
{
    y_size = tile_yspace - (obj_h mod tile_yspace);
}

y_scale = y_size / tile_yspace;

// Iterates along the width and height of the object by the size of the tile.
for (var i = 0; i < obj_w; i += x_size)
{
    for (var j = 0; j < obj_h; j += y_size)
    {
        var tile_x, tile_y;
        
        // Determines the x coordinate of the tiles within the tile texture.
        if (i == 0)
            tile_x = 0;
        else if (i + x_size < obj_w)
            tile_x = tile_xspace;
        else
            tile_x = tile_xspace * 2;
        
        // Determines the y coordinate of the tiles within the tile texture.
        if (j == 0)
            tile_y = 0;
        else if (j + y_size < obj_h)
            tile_y = tile_yspace;
        else
            tile_y = tile_yspace * 2;
               
        // Adds a new tile to the scene based on the parameters derived above.
        var new_tile = tile_add(bg_tiles_main, tile_x, tile_y + tile_yoffset, tile_xspace, tile_yspace, i + x, j + y, tile_layer);
        
        // Scales the newly created tile.
        tile_set_scale(new_tile, x_scale, y_scale);
    }
}
