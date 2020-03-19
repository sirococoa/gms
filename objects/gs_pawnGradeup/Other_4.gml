/// @description Insert description here
// You can write your code in this editor

with (obj_pawn)
{
	if (color == 0 and pos_y == 0)
	{
		other.target = id
	}
	if (color == 1 and pos_y == 7)
	{
		other.target = id
	}
}

if (target.color == 0)
{
	var height = -1
}
else
{
	var height = 1
}

with (obj_pawnGradeup_queen)
{
	x = other.target.x - 2*gs_board.tile_height
	y = other.target.y + height*gs_board.tile_width
	sprite_index = other.target.color
}
with (obj_pawnGradeup_rook)
{
	x = other.target.x - 0.75*gs_board.tile_height
	y = other.target.y + height*gs_board.tile_width
	sprite_index = other.target.color
}
with (obj_pawnGradeup_bishop)
{
	x = other.target.x + 0.75*gs_board.tile_height
	y = other.target.y + height*gs_board.tile_width
	sprite_index = other.target.color
}
with (obj_pawnGradeup_knight)
{
	x = other.target.x + 2*gs_board.tile_height
	y = other.target.y + height*gs_board.tile_width
	sprite_index = other.target.color
}
	
//button[0] = createButton(x - 2*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_queen, target.color)
//button[1] = createButton(x - 0.75*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_bishop, target.color)
//button[2] = createButton(x + 0.75*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_rook, target.color)
//button[3] = createButton(x + 2*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_knight, target.color)

//new_piece[0] = obj_queen
//new_piece[1] = obj_bishop
//new_piece[2] = obj_rook
//new_piece[3] = obj_knight
