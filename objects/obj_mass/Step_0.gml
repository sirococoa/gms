/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	var self_piece = gs_game.picies[pos_x, pos_y]
	if (self_piece != noone and self_piece.color == gs_game.player)
	{
		resetMass()
		// move
		for (var i = 0; i < 8; i++)
		{
			for (var j = 0; j < 8; j++)
			{
				if (self_piece.moveable_tiles[i, j])
				{
					with (gs_board.mass[i, j])
					{
						piece = self_piece
						instance_change(obj_moveable, false)
					}
				}
			}
			if (self_piece.object_index == obj_pawn)
			{
				// 初回は2マス進める
				if (self_piece.first_move)
				{
					if (self_piece.color == 0 and gs_board.mass[pos_x, pos_y - 2].piece == noone)
					{
						with (gs_board.mass[pos_x, pos_y - 2])
						{
							piece = self_piece
							instance_change(obj_pawnFirstMove, false)
						}
					}
					else if (self_piece.color == 1 and gs_board.mass[pos_x, pos_y + 2].piece == noone)
					{
						with (gs_board.mass[pos_x, pos_y + 2])
						{
							piece = self_piece
							instance_change(obj_pawnFirstMove, false)
						}
					}
					else
					{
						// no enter
					}
				}
				// enpassant
				if (pos_x > 0 and gs_game.picies[pos_x - 1, pos_y] != noone and gs_game.picies[pos_x - 1, pos_y].enpassant and gs_game.picies[pos_x - 1, pos_y].color != self_piece.color)
				{
					if (self_piece.color == 0)
					{
						with (gs_board.mass[pos_x - 1, pos_y - 1])
						{
							piece = self_piece
							instance_change(obj_enpassant, false)
						}
					}
					else
					{
						with (gs_board.mass[pos_x - 1, pos_y + 1])
						{
							piece = self_piece
							instance_change(obj_enpassant, false)
						}
					}
					
				}
				if (pos_x < 7 and gs_game.picies[pos_x + 1, pos_y] != noone and gs_game.picies[pos_x + 1, pos_y].enpassant and gs_game.picies[pos_x + 1, pos_y].color != self_piece.color)
				{
					if (self_piece.color == 0)
					{
						with (gs_board.mass[pos_x + 1, pos_y - 1])
						{
							piece = self_piece
							instance_change(obj_enpassant, false)
						}
					}
					else
					{
						with (gs_board.mass[pos_x + 1, pos_y + 1])
						{
							piece = self_piece
							instance_change(obj_enpassant, false)
						}
					}
				}
			
			}
			if (self_piece.object_index == obj_king)
			{
				if (self_piece.castling_left) 
				{
					with (gs_board.mass[pos_x - 2, pos_y])
					{
						king = self_piece
						rook = self_piece.castling_left_rook
						instance_change(obj_castling, false)
					}
				}
				if (self_piece.castling_right) 
				{
					with (gs_board.mass[pos_x + 2, pos_y])
					{
						king = self_piece
						rook = self_piece.castling_right_rook
						instance_change(obj_castling, false)
					}
				}
			}
		}
		// share
		if (gs_game.remain_share_time > 0)
		{
			gs_share.from = self_piece
			for (var i = 0; i < 8; i++)
			{
				for (var j = 0; j < 8; j++)
				{
					if (self_piece.shareable_tiles[i, j])
					{
						with (gs_board.mass[i, j])
						{
							instance_change(obj_shareable, false)
						}
						gs_board.mass[i, j].piece = self_piece
					}
				}
			}
		}
	}
}
