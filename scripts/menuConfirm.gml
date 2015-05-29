for (var j = 0; j < global.gamepadCount; j += 1) //loops through each gamepad
{
    if gamepad_button_check_pressed(j, gp_start) or gamepad_button_check_pressed(j, gp_face1)
    {
        return true;
    }
}
return false;
