global.player[argument0] = instance_create(0, 0, oPlayer);
global.player[argument0].player_num = argument0;
global.player[argument0].colour = argument1;
for (i = 0; i < 4; i++)
{
    global.player[argument0].paddle_pos[i] = argument2[argument0, i];
}
