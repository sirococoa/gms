/// @description Insert description here
// You can write your code in this editor

pos_x = 0
pos_y = 0

selected = false
color = 0	// 0:white, 1:black


point = 0
first_move = true
enpassant = false

for (var i = 0; i < 8; i++)
{
	for (var j = 0; j < 8; j++)
	{
		moveable_tiles[i, j] = false
	}
}

for (var i = 0; i < 8; i++)
{
	for (var j = 0; j < 8; j++)
	{
		shareable_tiles[i, j] = false
	}
}
