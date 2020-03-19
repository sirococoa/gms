/// @description Insert description here
// You can write your code in this editor

if (room == rm_battle or room == rm_share)
{
	draw_set_font(fnt_point)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	if (player == 0)
	{
		draw_set_colour(c_white)
		draw_text(gs_board.left + (gs_board.right - gs_board.left)/2, gs_board.top/2, "White Player Turn")
	}
	else
	{
		draw_set_colour(c_black)
		draw_text(gs_board.left + (gs_board.right - gs_board.left)/2, gs_board.top/2, "Black Player Turn")
	}
}

