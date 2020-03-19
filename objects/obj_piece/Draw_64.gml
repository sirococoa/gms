/// @description show Point
// You can write your code in this editor

if (instance_exists(gs_share))
{
	if (color == 0)
	{
		draw_set_colour(c_dkgray)
	}
	else
	{
		draw_set_colour(c_ltgray)
	}
	draw_set_font(fnt_point)
	//draw_set_halign(fa_center)
	//draw_set_valign(fa_middle)
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_text(x, y, string(point));
}