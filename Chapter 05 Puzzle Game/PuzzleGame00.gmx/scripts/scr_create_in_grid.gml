/// Creates a new instance adhered to a grid.

/* A comment block used to keep track of all the arguments in this function.
argument0 -- the grid's starting x position,
argument1 -- the grid's starting y position,
argument2 -- the horizontal spacing between objects in the grid
argument3 -- the vertical spacing between objects in the grid.
argument4 -- the new object's depth
argument5 -- the object index of the to be created instance.
argument6 -- the column that the object will be placed.
argument7 -- the row that the object will be placed.
argument8 -- the scale of the object
*/

var new_instance, x_pos, y_pos;

// The horizontal and vertical placement of the sprite is determined.
x_pos = argument0 + argument2 * argument6;
y_pos = argument1 + argument3 * argument7;

// The new instance is created
new_instance = instance_create(x_pos, y_pos, argument5);

// The depth of the new instance is set.
new_instance.depth = argument4;

// The image_speed is set to 0 on the new instance.
new_instance.image_speed = 0;

// Two instanced variables are set to the new object representing its current column and row
new_instance.col = argument6;
new_instance.row = argument7;

// Adjusts the object's scale.
new_instance.image_xscale = argument8;
new_instance.image_yscale = argument8;

// The new instance is returned.
return new_instance;
