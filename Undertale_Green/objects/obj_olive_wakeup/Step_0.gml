if (startshake == true)
{
	shake = true;
	startshake = false;
	alarm[0] = 12;
	hspeed = 0.5;
	audio_play_sound(snd_noise, 0.4, false);
}
if (shake == false)
	hspeed = 0;
if (shake == true)
{
	if (x > def_x)
		hspeed = -0.5;
	if (x < def_x)
		hspeed = 0.5;
}
if (wakeup == true)
{
	x = obj_player.x + 1;
	image_index = 0;
	audio_play_sound(snd_jump, 0.7, false);
	wakeup = false;
}
if (global.forest_cutscene == 3)
{
	if (keyboard_check(vk_down) == true || keyboard_check(vk_up) || keyboard_check(vk_left) || keyboard_check(vk_right) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("A")) || keyboard_check(ord("D")))
	{
		instance_destroy(self);
		obj_player.facing = 3;
		obj_player.visible = true;
	}
}
