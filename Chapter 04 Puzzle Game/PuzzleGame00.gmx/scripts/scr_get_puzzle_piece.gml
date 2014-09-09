// Gets an item from a two-dimensional array while staying in range.

/*
argument0 -- the column index
argument1 -- the row index
*/

if (argument0 >= 0 && argument0 < columns && argument1 >= 0 && argument1 < rows)
{
    // Returns the object from the 2D array.
    return array_pieces[argument0, argument1]
}
else
{
    // Returns noone if the arguments are out of range.
    return noone;
}
