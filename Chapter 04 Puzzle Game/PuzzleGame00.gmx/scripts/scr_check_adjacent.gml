/// Finds the total number of matching, adjacent piece

/*

argument0 the column to check
argument1 the row to check
argument2 The direction in which to check pieces horizontally.
argument3 The direction in which to check pieces vertically.

*/

// Declares variables.
var current_piece, col, row, other_piece, count;

// Assigns the local column and row variables.
col = argument0;
row = argument1;

// Tracks the number of adjacent pieces with the same image_index.
count = 0;

// Gets the current piece.
current_piece = scr_get_puzzle_piece(col, row);

// If a null piece is returned, the function return 0.
// If the column and row are both 0, the method ends to avoid an infinite loop.
if (current_piece == noone || (argument2 == 0 && argument3 == 0))
{
    return 0;
}

// col and row are adjusted based on the provided arguments.
col += argument2;
row += argument3;

// Gets the checked piece.
other_piece = scr_get_puzzle_piece(col, row);

// If the other piece is defined and matches the current pieces image_index, count is increased.
if (other_piece != noone && other_piece.image_index == current_piece.image_index)
{   
    // Increase count by one.  The function is called again with the adjusted rows.
    // Continue to check, but from the new column and row
    count += 1 + scr_check_adjacent(col, row, argument2, argument3);
}

// Return the final count.
return count;
