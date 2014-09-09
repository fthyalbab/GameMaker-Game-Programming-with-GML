// Create a local variable which will represent the ID of the instanced button.
var obj_new_button;

// argument0 is the x position, argument 1 is the y position.
obj_new_button = instance_create(argument0, argument1, obj_button);

// argument2 will be the displayed text.
obj_new_button.str_text = argument2;

// argument3 through argument6 will be the four script IDs.
obj_new_button.scripts[ev_left_button] = argument3;
obj_new_button.scripts[ev_left_press] = argument4;
obj_new_button.scripts[ev_left_release] = argument5;
obj_new_button.scripts[ev_mouse_enter] = argument6;

// The newly created button instance is returned.
return obj_new_button;
