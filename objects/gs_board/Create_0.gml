/// @description Insert description here
// You can write your code in this editor

tile_width = 64
tile_height = 64
left = 64*2
right = 64*10
top = 64*2
bottom = 64*10

//piece_selected = false
//select_pos_x = 0
//select_pos_y = 0

for (var i = 0; i < 8; i++)
{
	for (var j = 0; j < 8; j++)
	{
		mass[i, j] = instance_create_layer(getX(i), getY(j), "mass", obj_mass)
		mass[i, j].pos_x = i
		mass[i, j].pos_y = j
	}
}

// instance_create_layer(0, 0, "system", gs_game)


