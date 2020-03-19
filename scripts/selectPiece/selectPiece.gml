
var _target = argument0

// move
with (gs_move)
{
	if (_target != noone and _target != target)
	{
		with (obj_moveable)
		{
			instance_destroy()
		}
	}
	if (_target != noone and _target.color == gs_game.player)
	{
		for (var i = 0; i < 8; i++)
		{
			for (var j = 0; j < 8; j++)
			{
				if (_target.moveable_tiles[i, j])
				{
					createMoveable(i, j, _target)
				}
			}
		}
	}
}

// move
with (gs_share)
{
	if (_target != noone and _target != target)
	{
		with (obj_shareable)
		{
			instance_destroy()
		}
	}
	if (_target != noone and _target.color == gs_game.player)
	{
		for (var i = 0; i < 8; i++)
		{
			for (var j = 0; j < 8; j++)
			{
				if (_target.shareable_tiles[i, j])
				{
					createShareable(i, j, _target)
				}
			}
		}
	}
}