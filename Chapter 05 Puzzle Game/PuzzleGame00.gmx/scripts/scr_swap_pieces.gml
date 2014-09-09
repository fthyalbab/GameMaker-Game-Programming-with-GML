/* argument0 -- the column of the starting piece to be swapped.
 * argument1 -- the row of the start piece to be swapped.
 * argument2 -- the direction and value of the horizontal movement
 * argument3 -- the direction and value of the vertical movement
 * argument4 -- if true, the board will not be checked again after the swapped; used to rememdy inproper swaps.
 * argument5 -- which alarm to use for swapping pieces, 0 for swaps, 1 for falling.
 */

// Initializes two local variables, that will be adjusted to the column and row to be swapped.
var other_col, other_row;
other_col = argument0;
other_row = argument1;

// If the horizontal difference is greater than the vertical...
if (abs(argument2) > abs(argument3))
{
    // If argument3 is negative, the row is reduced by one;
    // otherwise, it is increased.
    if (argument2 < 0)
    {
        other_col--;
    }
    else
    {
        other_col++;
    }
}
else 
{
    // If argument3 is negative, the row is reduced by one;
    // otherwise, it is increased.
    if (argument3 < 0)
    {
        other_row--;
    }
    else
    {
        other_row++;
    }
}

// With the global instance of obj_grid_manager.
with (global.grid_manager)
{
    // Creates four local variables.
    var piece_a, piece_b, old_x_goal, old_y_goal;

    // Gets the current piece and other piece.
    piece_a = scr_get_puzzle_piece(argument0, argument1);
    piece_b = scr_get_puzzle_piece(other_col, other_row);
    
    // If either is null, the with statement is broken out of.
    if (piece_a == noone || piece_b == noone)
    {
        break;
    }
    
    // stores the original piece's x and y values.
    old_x = piece_a.x;
    old_y = piece_a.y;
    
    // Stores the original piece's x_goal and y_goal.
    old_x_goal = piece_a.x_goal;
    old_y_goal = piece_a.y_goal;
    
    // Stores the original piece's column and row.
    piece_a.col = other_col;
    piece_a.row = other_row;
    
    // Sets the new piece's column and row.
    piece_b.col = argument0;
    piece_b.row = argument1;
    
    // Sets the new piece's x and y goals to the original piece's.
    piece_a.x_goal = piece_b.x_goal;
    piece_a.y_goal = piece_b.y_goal;
    
    piece_b.x_goal = old_x_goal;
    piece_b.y_goal = old_y_goal;
    
    // Sets the piece reference within grid manager's board.
    array_pieces[argument0, argument1] = piece_b;   
    array_pieces[other_col, other_row] = piece_a;
    
    // Sets the alarm based on the fifth argument.
    piece_a.alarm[argument5] = 1;
    piece_b.alarm[argument5] = 1;
    
    // If the fifth argument is true, the board is not checked.  Used for incorrect swaps.
    if (argument4)
    {
        break;
    }
    
    // Checks for matches.  If none were found, the pieces are reset.
    if (!scr_check_board(true))
    {
        // We run the function again
        scr_swap_pieces(argument0, argument1, argument2, argument3, true, 0);
        
        // An incorrect swap sound effect is played.
        audio_play_sound(snd_incorrect_swap, 0, false);
    }
    else
    {
        // Plays a swap sound to signify that a swap has properly occured.
        audio_play_sound(snd_swap, 0, false);
        
        // Designates that the board is shifting pieces.
        shifting_pieces = true;
    }
}
