/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	movePiece((pos_x + king.pos_x)/2, pos_y, rook)
	movePiece(pos_x, pos_y, king)
	changeTurn()
}

