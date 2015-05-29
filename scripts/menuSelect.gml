//if left stick is pushed up, move selection up, and vice versa
direction = point_direction( 0, 0, 0, gamepad_axis_value(0, gp_axislv) ); //gets only vertical direciton of left stick (is it bad the the oMenu has a direciton? could it fly out of bounds?)
if gamepad_axis_value(0, gp_axislv) != 0 and lastturn == 0 //if left stick is pushed vertically, and wasn't pushed last step, increment or decrement the menu selection
{
    if direction < 180
    {
        selection -= 1; //if left stick pushed up, move selected button up
    }
    else
    {
        selection += 1; //if left stick pushed down, move selected buttond own
    }
    //makes sure the selection doesn't go out of bounds (is there a simpler way to do this?)
    if selection >= buttonamount
    {
        selection = 0;
    }
    else if selection < 0
    {
        selection = buttonamount - 1;
    }
    audio_play_sound(sndSelect, 1, false); //play the seleciton change noise
}
//loops through all the buttons and checks if they are selected
for (var i = 0; i < buttonamount; i++)
{
    if selection == i
    {
        button_alpha[i] = selected_alpha; //if a button is selected, set it's alpha to opaque
    }
    else
    {
        button_alpha[i] = unselected_alpha; //if a button isn't selected, set it's alpha to almost transparent
    }
}
lastturn = gamepad_axis_value(0, gp_axislv); // saves the position of the left stick this step, for use next step