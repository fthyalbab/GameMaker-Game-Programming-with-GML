/// Performs platform collision testing.

// argument0 -- the platform collided with.

if (argument0.solid && !place_free(x + hspeed, y + 1))
{
    // If the character would collide, it is moved back by its hspeed.
    x -= hspeed;
}

// If the the character collides vertically with the object.
if (place_meeting(x + hspeed, y + vspeed, argument0))
{
    // If the character is moving down and above the bottom of the platform...
    if (y - vspeed < argument0.y + step_threshold && current_platform != argument0.id)
    {
        // Assigns the current platform
        current_platform = argument0.id;
    
        // Moves the character to the top of the platform.
        y = other.y - 1;
        
        // Vertical speed and gravity are reduced to 0 to prevent continuous falling.
        vspeed = 0;
        gravity = 0;
        
        // Enter the idle state and reset the jump counter.
        state_id = state_idle;
        entered_new_state = true;
        jump_count = 0;
        
        
    }
    // If the character hits a solid collision from the bottom.
    else if (argument0.solid)
    {
        // Moves the character in reverse of the y position, similarly to the x-position
        y -= vspeed;
        
        // Speed is set to 0 to act like they were stopped.
        vspeed = 0;
    }
}
