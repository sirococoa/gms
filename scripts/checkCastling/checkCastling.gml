



with (obj_king)
{
	// castling
	castling_left = false
	castling_right = false
	if (first_move)
	{
		// find left rook
		if (pos_x > 2)
		{
			var i
			for (i = pos_x - 1; i > 0; i--)
			{
				if (gs_game.picies[i, pos_y] != noone)
				{
					break;
				}
			}
			castling_left_rook = gs_game.picies[i, pos_y]
			if (pos_x - i > 2 and castling_left_rook != noone and castling_left_rook.object_index == obj_rook and castling_left_rook .first_move and castling_left_rook .color == color)
			{
				// check enemy_atack
				var attacked_flg = false
				with (obj_piece)
				{
					if (color != other.color)
					{
						if (moveable_tiles[other.pos_x, other.pos_y]
							or moveable_tiles[other.pos_x - 1, other.pos_y]
							or moveable_tiles[other.pos_x - 2, other.pos_y])
						{
							attacked_flg = true
						}
					}
				}
				if (!attacked_flg)
				{
					castling_left = true
				}
			}
			
		}
		// find right rook
		if (pos_x < 6)
		{
			var i
			for (i = pos_x + 1; i < 7; i++)
			{
				if (gs_game.picies[i, pos_y] != noone)
				{
					break;
				}
			}
			castling_right_rook = gs_game.picies[i, pos_y]
			if (i - pos_x > 2 and castling_right_rook != noone and castling_right_rook.object_index == obj_rook and castling_right_rook.first_move and castling_right_rook.color == color)
			{
				// check enemy_atack
				var attacked_flg = false
				with (obj_piece)
				{
					if (color != other.color)
					{
						if (moveable_tiles[other.pos_x, other.pos_y]) attacked_flg = true
						if (moveable_tiles[other.pos_x + 1, other.pos_y]) attacked_flg = true
						if (moveable_tiles[other.pos_x + 2, other.pos_y]) attacked_flg = true
					}
				}
				if (!attacked_flg)
				{
					castling_right = true
				}
			}
		}
	}
}
