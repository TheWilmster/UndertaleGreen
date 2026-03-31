if (array_length(global.inventory) != 0)
{
	if (global.language == 0)
		sprite_index = spr_button_item;
	else if (global.language == 1)
		sprite_index = spr_button_item_esp;
}
else if (global.language == 0)
{
	sprite_index = spr_button_item_gray;
}
else if (global.language == 1)
{
	sprite_index = spr_button_item_gray_esp;
}
if (is_active == true)
	image_index = 1;
else
	image_index = 0;
image_alpha = global.half_op;
if (global.gray_buttons == true && instance_exists(obj_enemy_eden))
	image_index = 2;
