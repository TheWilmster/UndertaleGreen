if (global.cutscene_gray_eden_triggered == true)
{
	obj_player_dummy.visible = true;
	obj_player.visible = false;
	obj_player.solid = false;
	obj_player_dummy.image_speed = 0;
	obj_player_dummy.image_index = 0;
}
if (global.greenroom_dummy == true)
{
	obj_player_dummy.visible = true;
	image_speed = 0;
	sprite_index = spr_olive_c_back;
	if (walk_down == true)
	{
		sprite_index = spr_olive_c_down;
		vspeed = 3;
		image_speed = 0.75;
		if (y >= 384)
		{
			vspeed = 0;
			visible = false;
			walk_down = false;
		}
	}
	if (walk_in == true)
	{
		visible = true;
		x = 144;
		sprite_index = spr_olive_c_back;
		depth = 100;
		vspeed = -1;
		image_speed = 0.75;
		if (y <= 274)
		{
			vspeed = 0;
			image_speed = 0;
			sprite_index = spr_olive_c_back;
			image_index = 0;
		}
	}
}
if (global.trip == true)
{
	image_blend = c_gray;
	visible = true;
	obj_player_dummy.x = obj_player.x;
	obj_player_dummy.y = obj_player.y;
}
if (global.greenroom_dummy == false && global.cutscene_gray_eden_triggered == false && global.trip == false)
{
	obj_player_dummy.sprite_index = obj_player.sprite_index;
	image_blend = c_white;
	obj_player_dummy.visible = false;
	obj_player_dummy.x = obj_player.x;
	if (obj_player.sprite_index == spr_olive_c_back)
		obj_player_dummy.y = obj_player.y - 4;
	else
		obj_player_dummy.y = obj_player.y;
}
