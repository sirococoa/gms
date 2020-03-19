/// @description show share point
// You can write your code in this editor

if (room == rm_share)
{
	// 矢印描画
	var distance = point_distance(gs_share.from.x, gs_share.from.y, gs_share.to.x, gs_share.to.y)
	var angle = point_direction(gs_share.from.x, gs_share.from.y, gs_share.to.x, gs_share.to.y)
	draw_sprite_ext(spr_arrow, 0, gs_share.from.x, gs_share.from.y, distance/64, 1, angle, -1, 1)
	// ポイント描画
	draw_set_colour(c_white)
	draw_set_font(fnt_point)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text(draw_x, draw_y, string(share_point))
}
