// Initializes various local variables.
var i, j, array_broken_piece, array_length, piece, swap_piece;

// Tracks the length of the array storing ids of the broken pieces.
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

    // Sets matched to false.
    piece.matched = false;
    
    // The piece is continually swapped with pieces above it until it reaches the top.
    while (piece.row != 0)
    {
        // The fourth argument is -1 as it is known which direction the swap will take place.
        scr_swap_pieces(piece.col, piece.row, 0, -1, true);
    }
    
    // Sets the image_index to give the illusion of a new piece being created.
    piece.image_index = irandom(piece_range);
}

// Checks the board for new matches.
scr_check_board(true);
