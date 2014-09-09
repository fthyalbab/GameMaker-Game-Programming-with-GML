var triggered_event_id = event_id;

with (global.main_menu)
{
    switch (triggered_event_id)
    {
        case evt_play_game:
            // PLAY GAME
            break;
        case evt_row_dec:
        case evt_row_inc:
            break;
        case evt_col_dec:
            global.columns = max(global.columns - 1, column_min);
            break;
        case evt_col_inc:
            global.columns = min(global.columns + 1, column_max);
            break;
        case evt_piece_dec:
        case evt_piece_inc:
            break;
        case evt_time_dec:
        case evt_time_inc:
            break;
    }
}
