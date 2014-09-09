// We check if a proper argument has been inserted.
if (argument0 == noone)
{
    return false;
}

var c, r;
c = (argument0).column;
r = (argument0).row;

left = scr_get_puzzle_piece(c - 1, r);


right = scr_get_puzzle_piece(argument0 + 1, argument1);

above = scr_get_puzzle_piece(argument0, argument1 - 1);
below = scr_get_puzzle_piece(argument0, argument1 + 1);

if (left != noone && left.image_index == current.image_index)
{
    if (scr_check_adjacent(left, left.row, left.column))
    {
        return true;
    }
}

return false;
