var i, j;
for (i = 0; i < columns; i++)
{
    for (j = 0; j < rows; j++)
    {
        if (array_pieces[i, j] == noone)
        {
            continue;
        }
        else
        {
            if (array_piece[i, j + 1] == noone)
            {
                array_pieces[i, j].column = j + 1;
                array_pieces[i, j + 1] = array_pieces[i, j];
                array_pieces[i, j] = noone;
            }
        }
    }
}
