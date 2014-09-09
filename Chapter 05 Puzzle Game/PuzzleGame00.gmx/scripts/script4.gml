// Gets a puzzle piece from the grid based on the specified column and row index.

if (argument0 >= 0 && argument0 < columns && argument1 >= 0 && argument1 < rows)
{
    return array_pieces[argument0, argument1]
}
else
{
    return noone;
}
