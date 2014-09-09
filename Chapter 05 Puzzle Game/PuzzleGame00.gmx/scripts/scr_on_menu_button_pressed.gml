// Triggers the appropriate action by using the index of the button pressed.

switch (argument0)
{
    // Decreases column
    case 0:
        global.columns = max(global.columns - 1, column_min);
        column_info[2] = "Columns:  " + string(global.columns);            
        break;
    // Increases column
    case 1:
        global.columns = min(global.columns + 1, column_max);
        column_info[2] = "Columns:  " + string(global.columns);
        break;
    // Decreases row
    case 2:
        global.rows = max(global.rows - 1, row_min);
        row_info[2] = "Rows:  " + string(global.rows);
        break;
    // Increases row
    case 3:
        global.rows = min(global.rows + 1, row_max);
        row_info[2] = "Rows:  " + string(global.rows);            
        break;
    // Decreases start time.
    case 4:
        global.start_time = max(global.start_time - 1, start_time_min);
        
        time_info[2] = "Time:  " + string(global.start_time);
        
        // Sets the text to use proper grammar if only one minute remains.
        if (global.start_time == 1)
        {
            time_info[2] += " Minute";            
        }
        else
        {
            time_info[2] += " Minutes";
        }
        break;  
    // Increases start time.          
    case 5:
        global.start_time = min(global.start_time + 1, start_time_max);
        time_info[2] = "Time:  " + string(global.start_time) + " Minutes";            
        break;
    // Decreases piece range.
    case 6:
        global.piece_range = max(global.piece_range - 1, piece_min);
        piece_width_mid = global.piece_range * piece_width * 0.5;
        piece_pos_x_mid = title_info[0] - piece_width_mid;
        break;
    // Increases piece range.
    case 7:
        global.piece_range = min(global.piece_range + 1, piece_max);
        piece_width_mid = global.piece_range * piece_width * 0.5;
        piece_pos_x_mid = title_info[0] - piece_width_mid;
        break;
    // Goes to the game room.
    case 8:
        room_goto(rm_gameplay);
        break;
}
