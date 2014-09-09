/// view sample

// Different view variables.  Allowed indexes range from 0 to 7.

// If true, allows the room to use views.
view_enabled = true;

// If true, the current view will be visible.
view_visible[0] = true;

// The x position of the view at the supplied index.
view_xview[0] = 0;

// The y position of the view at the supplied index.
view_yview[0] = 0;

// The width of the view at the supplied index.
view_wview[0] = 1024;

// The height of the view at the supplied index.
view_hview[0] = 768;

// The x position of the view ported to the game window.
view_xport[0] = 0;

// The y position of the view ported to the game window.
view_yport[0] = 0;

// The width of the view ported to the game window.
view_wport[0] = 0;

// The height of the view ported to the game window.
view_hport[0] = 0;

// The object that will be followed.
// If an Object Resource ID is given, only the first instance is followed.
view_object[0] = obj_vlad

// The horizontal border of the view.
view_hborder[0] = 128;

// The horizontal speed of the view.
view_hspeed[0] = -1;

// THe vertical border of the view.
view_vborder[0] = 128;

// The vertical speed of the view
view_vspeed[0] = -1;

// Views can be rotated through the use of this, but 
view_angle[0] = 0;

// Read-only variable that returns the current view being rendered and is only used by Draw Events.
if (view_current == 0)
{
    draw_text(0, 0, "View 0");
}
