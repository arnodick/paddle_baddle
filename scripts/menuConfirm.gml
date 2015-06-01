button_player = 0;
for (var j = 0; j < global.gamepadCount; j += 1) //loops through each gamepad
{
    if ( gamepad_button_check_pressed(j, gp_start) or gamepad_button_check_pressed(j, gp_face1) or keyboard_check_pressed(vk_space) or keyboard_check_pressed(vk_enter) or keyboard_check_pressed(ord('Z')) or keyboard_check_pressed(ord('X')) )
    {
        button_player = j;
        return true;
    }
}
return false;
