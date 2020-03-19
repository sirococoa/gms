/// @description Insert description here
// You can write your code in this editor

// set piece point
pieceToPoint = ds_map_create()
pieceToPoint[? obj_pawn] = 1
pieceToPoint[? obj_knight] = 2
pieceToPoint[? obj_bishop] = 3
pieceToPoint[? obj_rook] = 4
pieceToPoint[? obj_queen] = 5
pieceToPoint[? obj_king] = 6

pointToPiece = ds_map_create()
point_list = ds_list_create()
var key = ds_map_find_first(pieceToPoint)
for (var i = 0; i < ds_map_size(pieceToPoint); i++)
{
	pointToPiece[? pieceToPoint[? key]] = key
	ds_list_add(point_list, pieceToPoint[? key])
	key = ds_map_find_next(pieceToPoint, key)
}
ds_list_sort(point_list, true)
