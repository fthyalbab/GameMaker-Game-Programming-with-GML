/// This script created a grid of objects.

/*==============================
argument0 -- the board's initial X position.
argument1 -- the board's initial Y position.
argument2 -- the depth of each new object.
argument3 -- the horizontal spacing between objects in the grid.
argument4 -- the vertical spacing between objects in the grid.
argument5 -- the number of columns.
argument6 -- the number of rows.
argument7 -- the index of the object that will be instantiated.
===============================*/

// A set of local variables used only for this script are defined.
var i, j, x_pos, y_pos, spr_index, spr_width, spr_height, new_instance

// The sprite index of the object index is obtained.
spr_index = object_get_sprite(argument7);

// The sprite width and height are found with spacing added.
spr_width =  sprite_get_width(spr_index) + argument3;
spr_height = sprite_get_height(spr_index) + argument4;

// The number of columns are loops through
for (i = 0; i < argument5; i++)
{
    // The number of rows are looped through within each column.
    for (j = 0; j < argument6; j++)
    {
        // the x and y positions are deteremined.
        x_pos = argument0 + i * spr_width;
        y_pos = argument1 + j * spr_height;   
        
        // A new instance of the object at the appropriate position is given.
        new_instance = instance_create(x_pos, y_pos, argument7);
        
        // The animation is paused temporarily.
        new_instance.image_speed = 0;
        
        // Sets the depth of the object
        new_instance.depth = argument2
        
        // The column and row are identified within the object.
        new_instance.column = i;
        new_instance.row = j;
    }
}
