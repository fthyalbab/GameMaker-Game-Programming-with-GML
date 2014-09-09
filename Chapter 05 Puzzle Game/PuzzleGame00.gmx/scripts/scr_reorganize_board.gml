// Initializes various local variables.
var i, j, array_broken_piece, array_length, piece, swap_piece;

// Tracks the length of the array storing ids of the broken pieces.
array_length = 0;

// Plays the pop noise.  Only played once to avoid noise.
audio_play_sound(snd_pop, 0, false);

// Loop through every piece on the board, looking for pieces that have been designated as matching.
for (i = 0; i < columns; i++)
{
    for (j = 0; j < rows; j++)
    {
        if (array_pieces[i, j].matched)
        {
            // The local array is increased and fill it with the pieces that are matching.
            array_broken_piece[array_length++] = array_pieces[i, j];
            
            // Emits particles from the position of the piece and its index.
            var burst_x, burst_y, index;
            burst_x = array_pieces[i, j].x;
            burst_y = array_pieces[i, j].y;
            index = floor(array_pieces[i, j].image_index);
            with (global.ps_manager)
            {
                part_particles_create(ps, burst_x, burst_y, pt[index,0] , pt[index,1]);
            }
        }
    }
}

// Increments the combo count
combo_count++;

// Loops through the newly created array.
for (i = 0; i < array_length; i++)
{
    // Assign the local variable since it will be used.
    piece = array_broken_piece[i];

    // Sets matched to false.
    piece.matched = false;
    
    // Move the piece off-screen.
    piece.y = -100;
    
    // The piece is continually swapped with pieces above it until it reaches the top.
    while (piece.row != 0)
    {
        // Continually move the piece up so the pieces fall in order.
        piece.y -= 100;
        
        // The fourth argument is -1 as it is known which direction the swap will take place.
        scr_swap_pieces(piece.col, piece.row, 0, -1, true, 1);
    }
    
    // Set first alarm to 1 so pieces at row 0 will still fall into place.
    piece.alarm[1] = 1;
    
    // 100 points are added for each broken piece.
    score += 100 * combo_count;
    
    // Sets the image_index to give the illusion of a new piece being created.
    piece.image_index = irandom(piece_range);
}

// Adjusts the score and piece count texts.
var score_string = string(score);

// Add zeros in front of the score string until it is 10 characters long.
while (string_length(score_string) < 10)
{
    score_string = "0" + score_string;
}
score_info[2] = "Score:#" + score_string;

// Checks the board for new matches.
if (!scr_check_board(true))
{
    combo_count = 0;
    shifting_pieces = false;
}
