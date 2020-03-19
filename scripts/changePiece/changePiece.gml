/// @description 指定した駒をその駒が持っているポイントに応じて変化させる

/// @param	変化させる駒

var _piece = argument0

var floored_point =  listFloor(gs_rule.point_list, _piece.point)
var next_piece = gs_rule.pointToPiece[? floored_point]

with (_piece)
{
	instance_change(next_piece, false)
}

