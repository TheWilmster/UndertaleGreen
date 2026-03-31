if (officecont1 == true && !instance_exists(obj_textboxNEW))
{
	obj_alaska_office.walk_down = true;
	alarm[1] = 100;
	obj_player.office_camgodown = true;
	obj_destiny_office.walk_out = true;
	obj_kaitlyn_office.walk_out = true;
	officecont1 = false;
}
if (officecont2 == true && !instance_exists(obj_textboxNEW))
{
	obj_alaska_office.walk_offscreen = true;
	obj_player.office_camgoup = true;
	if (audio_is_playing(snd_rummage))
		audio_stop_sound(snd_rummage);
	alarm[3] = 80;
	alarm[2] = 140;
	officecont2 = false;
}
if (officecont3 == true && !instance_exists(obj_textboxNEW))
{
	obj_chai_office.walk_offscreen = true;
	alarm[4] = 80;
	officecont3 = false;
}
