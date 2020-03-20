/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	if (piece.color == 0)
	{
		instance_destroy(gs_game.picies[pos_x, pos_y + 1])
		gs_game.picies[pos_x, pos_y + 1] = noone
	}
	else
	{
		instance_destroy(gs_game.picies[pos_x, pos_y - 1])
		gs_game.picies[pos_x, pos_y - 1] = noone
	}
	movePiece(pos_x, pos_y, piece)
	changeTurn()
}
