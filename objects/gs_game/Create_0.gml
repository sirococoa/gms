/// @description Insert description here
// You can write your code in this editor

instance_create_layer(0, 0, "system", gs_rule)
instance_create_layer(0, 0, "system", gs_board)

player = 0  // 0:white, 1:black

target = noone

move = true

remain_share_time = gs_rule.max_share_time

for (var i = 0; i < 8; i++)
{
	for (var j = 0; j < 8; j++)
	{
		picies[i, j] = noone
	}
}

setup()

moveable()