// Creates defense paddles and offense puck at their beginning positions
var def = instance_create(argument0, argument1, oDefense);
// Assigns the defense and offense objects to either player 1 or player 2
def.player_num = argument2;
def.player_stick = global.reverse[argument2] + argument2;
if def.player_stick > 1
{
    def.player_stick = 0;
}
