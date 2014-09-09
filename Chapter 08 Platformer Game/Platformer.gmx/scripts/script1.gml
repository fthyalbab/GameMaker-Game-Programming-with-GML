/* arguments
argument0 -- the width of the object.
argument1 -- the heigth of the object.
argument2 -- the x-spacing between tiles
argument3 -- the y-spaicng between tiles
argument4-- the y offset of the tile set being drawn.
*/

for (var i = 0; i < argument0; i += argument2)
{
    for (var j = 0; j < argument1; j += argument3)
    {
        tile_add(bg_tiles_main, 0, argument4, argument2, argument3, i + x, j + y, 1000001);
    }
}
