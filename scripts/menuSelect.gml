direction = point_direction( 0, 0, 0, gamepad_axis_value(0, gp_axislv) );
if gamepad_axis_value(0, gp_axislv) != 0 and lastturn == 0
{
    if direction < 180
    {
        selection -= 1;
    }
    else
    {
        selection += 1;
    }
    
    if selection >= buttonamount
    {
        selection = 0;
    }
    else if selection < 0
    {
        selection = buttonamount - 1;
    }
    
    audio_play_sound(sndSelect, 1, false);
}

var i = 0;
for (i = 0; i < buttonamount; i++)
{
    if selection == i
    {
        button_value[i] = selected_alpha;
    }
    else
    {
        button_value[i] = unselected_alpha;
    }
}
lastturn = gamepad_axis_value(0, gp_axislv);
