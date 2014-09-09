// starting column, ending column, starting row, ending row, change type...if -1, we remove.
var i,j;

for (i = argument0; i <= argument1; i++)
{
    for (j = argument2; j <= argument3; j++)
    {
        var piece = scr_get_puzzle_piece(i, j);
        if (piece == noone)
        {
            continue;
        }
        
        if (argument5)
        {
            piece.matched = true;
        }
        else
        {
            piece.image_index = floor(random_range(0, argument4));
        }
    }
}
