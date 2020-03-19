/// @description Insert description here
// You can write your code in this editor


for (var i = 0; i < 4; i++)
{
	if (button[i].selected)
	{
		with (target)
		{
			instance_change(other.new_piece[i], false)
		}
		for (var i = 0; i < 4; i++)
		{
			instance_destroy(button[i])
		}
		room_goto_previous()
	}
}

