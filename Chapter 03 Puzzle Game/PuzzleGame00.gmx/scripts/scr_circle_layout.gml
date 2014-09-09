var i, j, angle, center_x, center_y, new_obj;

argument4 = max(1, argument4);
angle = degtorad(360 / argument4);

for (i = 0; i < argument4; i++)
{
    center_x = argument0 + argument2 * cos(angle * i);
    center_y = argument1 + argument3 * sin(angle * i);
    new_obj = instance_create(center_x, center_y, argument5);
    new_obj.depth = -new_obj.y;
}
