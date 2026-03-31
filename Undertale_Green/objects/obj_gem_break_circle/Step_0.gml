theta += obj_gemspin_control.gem_theta;
x = 295 + (140 * cos(theta));
y = 276.5 + (140 * sin(theta));
if (fadein == true)
	image_alpha += 0.2;
if (spawn_gem == true && x <= 371)
{
	instance_create_depth(0, 0, -5001, obj_gem_break_circle, 
	{
		gem_value: gem_value + 1
	});
	spawn_gem = false;
}
if (break_check == true && !array_contains(obj_gemspin_control.break_order, gem_value))
{
	audio_play_sound(snd_break1, 1, false);
	image_index = 1;
	alarm[2] = 5;
	alarm[1] = 20;
	break_check = false;
}
