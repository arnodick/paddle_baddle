for (var j = 0; j < global.gamepadCount; j += 1) //loops through each gamepad
{
    if gamepad_button_check_pressed(j, gp_select)
    {
        return true;
    }
}
if keyboard_check_pressed(ord("Q"))
{
    return true;
}
return false;
