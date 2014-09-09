/// Creates and returns a new button

var obj_new_button;

obj_new_button = instance_create(argument0, argument1, obj_button);
obj_new_button.str_text = argument2;
obj_new_button.scripts[ev_left_button] = argument3;
obj_new_button.scripts[ev_left_press] = argument4;
obj_new_button.scripts[ev_left_release] = argument5;
obj_new_button.scripts[ev_mouse_enter] = argument6;

// New arguments added and used.
obj_new_button.image_xscale = argument7;
obj_new_button.image_yscale = argument8;
obj_new_button.event_id = argument9;

return obj_new_button;
