var i, j, array_broken_piece, array_length, piece, swap_piece;

array_length = 0;

// Loop through every piece on the board, looking for pieces that have been designated as matching.
for (i = 0; i < columns; i++)
{
    for (j = 0; j < rows; j++)
    {
        if (array_pieces[i, j].matched)
        {
            // The local array is increased and fill it with the pieces that are matching.
            array_broken_piece[array_length++] = array_pieces[i, j];
        }
    }
}

// Loops through the newely created array.
for (i = 0; i < array_length; i++)
{
    // Assign the local variable since it will be used.
    piece = array_broken_piece[i];

    // We move the broken piece up until it's at the top row.
    while (piece.row != 0)
    {
        // The piece from above it assigned.
        swap_piece = array_pieces[piece.col, piece.row - 1];
        
        // The pieces' rows, y_goal, and positions in the game board's array are swapped.
        swap_piece.row = piece.row;
        piece.row--;
            
        swap_piece.y_goal = piece.y_goal;
        piece.y_goal -= y_spacing;
            
        array_pieces[swap_piece.col, swap_piece.row] = swap_piece;
        array_pieces[piece.col, piece.row] = piece;

        swap_piece.alarm[0] = 1;
    }
    
    piece.y = -100;
    piece.image_index = floor(random_range(0, type_count));
    piece.alarm[0] = 1;
}

alarm[0] = 90;
