obj_player.curr_state = PlayerState.INTERACT;
if (junk1 == true && !instance_exists(obj_textboxNEW))
{
	alarm[1] = 20;
	junk1 = false;
}
if (junk2 == true && !instance_exists(obj_textboxNEW))
{
	runtoolive = true;
	junk2 = false;
}
if (runtoolive == true)
{
	vspeed = -4.5;
	hspeed = -1.5;
	image_speed = 0.5;
	sprite_index = spr_eden_walkup_pj;
	if (y <= 118)
	{
		image_speed = 0;
		image_index = 0;
		hspeed = 0;
		vspeed = 0;
		sprite_index = spr_eden_walkr;
		runtoolive = false;
		visible = false;
		obj_player_dummy3.image_index = 3;
		alarm[3] = 10;
	}
}
if (junk3 == true && !instance_exists(obj_textboxNEW))
{
	alarm[4] = 58;
	alarm[7] = 10;
	alarm[8] = 34;
	junk3 = false;
}
if (junk4 == true && !instance_exists(obj_textboxNEW))
{
	alarm[5] = 20;
	junk4 = false;
}
if (junk5 == true && !instance_exists(obj_textboxNEW))
{
	alarm[6] = 60;
	obj_gray_junk.leaveroom = true;
	junk5 = false;
}
if (junk6 == true && !instance_exists(obj_textboxNEW))
{
	instance_create_depth(0, 0, -9999, obj_transition, 
	{
		target_rm: rm_eden_hall2,
		target_marker: "B"
	});
	junk6 = false;
}
