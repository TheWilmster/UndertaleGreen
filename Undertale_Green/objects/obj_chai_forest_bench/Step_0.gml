if (continue_talk == true)
{
	alarm[0] = 90;
	continue_talk = false;
}
if (hug == true && !instance_exists(obj_textboxNEW))
{
	alarm[1] = 180;
	visible = false;
	obj_player.visible = false;
	instance_create_depth(137, 157, -1000, obj_chai_hug);
	image_index = 0;
	hug = false;
}
if (hugend == true && !instance_exists(obj_textboxNEW))
{
	obj_chai_hug.image_speed = 0.15;
	alarm[2] = 150;
	hugend = false;
}
if (global.bench_cut == 1)
	obj_player.curr_state = PlayerState.CUTSCENE;
if (global.bench_cut == 2 && instance_exists(obj_player) && instance_exists(obj_textboxNEW))
{
	obj_player.x = 160;
	obj_player.y = 184;
	obj_player.sprite_index = spr_olive_c_back;
}
if (endgame_cutscene == true)
{
	if (instance_exists(obj_player))
		obj_player.curr_state = PlayerState.CUTSCENE;
}
if (playguitar == true && !instance_exists(obj_textboxNEW))
{
	obj_bench_control_post.trans_alarm = true;
	y += 2;
	sprite_index = spr_chai_walk_r;
	hspeed = 2;
	image_speed = 0.15;
	walkaway = true;
	playguitar = false;
}
if (page_activate == 1 && !instance_exists(obj_textboxNEW))
{
	book_cutscene = 1;
	if (page_drawing != 0 && page_drawing != 6)
		audio_play_sound(snd_page, 1, false);
	if (!instance_exists(obj_ending_book))
		instance_create_depth(0, 0, -1000, obj_ending_book);
	obj_ending_book.has_drawn = false;
	page_drawing += 1;
	if (page_drawing < 7)
	{
		if (page_drawing >= 1)
		{
			alarm[7] = 30;
			alarm[6] = 100;
		}
		else
		{
			alarm[6] = 60;
		}
	}
	else
	{
		obj_ending_book.fade_out = true;
		book_cutscene = 0;
		alarm[6] = 60;
	}
	page_activate = 0;
}
if (walkaway == true)
{
	if (x > 204)
	{
		hspeed = -0.25;
		vspeed = -2;
		sprite_index = spr_chai_walk_u;
		depth = 15;
		obj_bench_control_post.shiftcam = true;
	}
	if (y <= -30)
		instance_destroy();
}
if (global.bench_cut == 1 && instance_exists(obj_player))
	depth = obj_player.depth + 1;
