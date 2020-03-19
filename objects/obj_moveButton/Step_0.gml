/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, id))
{
	selected = true
	obj_shareButton.selected = false
	with (obj_shareable)
	{
		instance_change(obj_mass, false)
	}
}

if (selected)
{
	image_index = 1
}
else
{
	image_index = 0
}
