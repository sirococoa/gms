/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	//gs_game.move = true
	//gs_game.move_x = pos_x
	//gs_game.move_y = pos_y
	with (obj_shareable)
	{
		instance_change(obj_mass, false)
	}
	with (obj_moveable)
	{
		instance_change(obj_mass, false)
	}
	with (obj_pawnFirstMove)
	{
		instance_change(obj_mass, false)
	}
	gs_share.from = piece
	gs_share.to = gs_game.picies[pos_x, pos_y]
	room_goto(rm_share)
}
