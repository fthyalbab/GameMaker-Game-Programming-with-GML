// The number of adjacenet pieces that match

/*

argument0 the column to check
argument1 the row to check
argument2 if true, checks pieaces that are only horizontally adjacent; otherwise, the vertical pieces are checkd.
argument3 if true, checks the previous piece in the row or column.
argument4 if true, checks the next piece in the row or column.

*/

var current_piece, other_piece, count;
current_piece = scr_get_puzzle_piece(argument0, argument1);
if (current_piece == noone)
{
    return 0;
}

if (argument2 == true)
{
    if (argument3 == true)
    {
        other_piece = scr_get_puzzle_piece(argument0 - 1, argument0);
        if (other_piece != noone && other_piece.image_index == current_piece.image_index)
        {
            count++;
            count += scr_check_adjacent(argument0 - 1, argument0, argument2, true, false);
        }
    }
    
    if (argument4 == true)
    {
    }
}
else
{
}
