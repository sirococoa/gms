/// @description Insert description here
// You can write your code in this editor


if (room == rm_share)
{
	if (obj_okButton.selected)
	{
		if (from.object_index == obj_king and countKing(from.color) == 1)
		{
			// 最後のobj_kingのポイントを移動しようとしている
			if (
				from.point - share_point < gs_rule.pieceToPoint[? obj_king] // fromがobj_kingで無くなる
				and to.point + share_point < gs_rule.pieceToPoint[? obj_king]// toがobj_kingにならない
			)
			{
				obj_okButton.selected = false
				exit;
			}	
		}
		from.point -= share_point
		to.point += share_point
		changePiece(from)
		changePiece(to)
		obj_okButton.selected = false
		room_goto_previous()
	}
	if (obj_cancelButton.selected)
	{
		obj_cancelButton.selected = false
		room_goto_previous()
	}
}