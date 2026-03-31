siner -= 0.08;
if (firing == false)
	y_scale = (sin(siner) / 35) + 1;
else
	y_scale = 1;
if (come_out == true)
	image_speed = 0.33;
if (fire == true)
{
	shake = true;
	fire = false;
	firing = true;
	alarm[2] = 32;
	image_index = 4;
	shot_x = 0;
	audio_play_sound(snd_firecharge, 1, false);
}
if (shake == true)
	shake_x = sin(20 * siner);
else
	shake_x = 0;
