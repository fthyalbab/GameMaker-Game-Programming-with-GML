/// Checks each piece on the board for matches.

/* argument0 -- if true, we designate matching sets of three or more to be destroyed;
otherwise, matching sets are continuously adjusted.
*/

// Create a variable designating that matches have been found.
var i, j, match_found, match_piece;

// Set to true so the initial while loop runs at least once.
match_found = true;

while (match_found)
{
    // match_found set to false.  If no matches are found, the loop will be broken.
    match_found = false;
    
    // Loop through each column and row.
    for (i = 0; i < columns; i++)
    {
        for (j = 0; j < rows; j++)
        {
            // The count of adjacent, matching pieces to the right and below.
            var h_count, v_count;
            h_count = scr_check_adjacent(i, j, 1, 0);
            v_count = scr_check_adjacent(i, j, 0, 1);
            

            // If the number of match pieces matching to the right is greater than or equal to 2...
            if (h_count >= 2)
            {
                while (h_count >= 0)
                {
                    if (!argument0)
                    {
                        array_pieces[i + h_count, j].image_index = irandom(piece_range);
                    }
                    else
                    {
                        array_pieces[i + h_count, j].matched = true;
                    }
                    h_count--;
                }
                match_found = true;
            }

            // If the number of match pieces matching below is greater than or equal to 2...            
            if (v_count >= 2)
            {
                while (v_count >= 0)
                {
                    if (!argument0)
                    {
                        array_pieces[i, j + v_count].image_index = irandom(piece_range);
                    }
                    else
                    {
                        array_pieces[i, j + v_count].matched = true;
                    }
                    v_count--;
                }
                match_found = true;
            }
        }
    }
    
    // The loop is exited if checking for matches to break.
    if (argument0)
    {
        break;
    }
}

// If designated to destroy matching pieces, the board is then reorganized.
if (argument0 && match_found)
{
    // Sets an alarm for reorganizing the board.
    alarm[0] = 45;
}

// Returns whether or not any matches were found.
return match_found;
