/// @description gs_pwanGradeupを生成し、進化先の選択肢(obj_button)を生成する

with (instance_create_layer(id.x, id.y, "system", gs_pawnGradeup))
{
	target = other.id
	
	if (target.color == 0)
	{
		var height = -1
	}
	else
	{
		var height = 1
	}
	
	
	button[0] = createButton(x - 2*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_queen, target.color)
	button[1] = createButton(x - 0.75*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_bishop, target.color)
	button[2] = createButton(x + 0.75*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_rook, target.color)
	button[3] = createButton(x + 2*gs_board.tile_height, y + height*gs_board.tile_width, obj_pwanGredeup_knight, target.color)

	new_piece[0] = obj_queen
	new_piece[1] = obj_bishop
	new_piece[2] = obj_rook
	new_piece[3] = obj_knight
}