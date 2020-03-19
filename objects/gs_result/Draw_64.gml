/// @description Insert description here
// You can write your code in this editor


//draw_set_colour(c_yellow)
//draw_set_font(fnt_result)
//draw_set_halign(fa_left)
//draw_set_valign(fa_middle)
//draw_text(704, room_height/2, winner + " is Win!")


if (winner == 0)
{
	draw_sprite_ext(spr_white_win_banner, banner_index, room_width/2, room_height/2, 4, 4, 0, c_white, 1)
}
else
{
	draw_sprite_ext(spr_black_win_banner, banner_index, room_width/2, room_height/2, 4, 4, 0, c_white, 1)
}


draw_set_font(fnt_point)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if (winner == 0)
{
	draw_set_colour(c_white)
}
else
{
	draw_set_colour(c_black)
}
draw_text(room_width/2, gs_board.top/2, "\"Press ESC\" to go start menu")