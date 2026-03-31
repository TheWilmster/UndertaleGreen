if (x <= 402 && flying == true)
{
	flying = false;
	vspeed = 0;
	gravity = 0;
	hspeed = 0;
	obj_heart.shake = 4;
	audio_play_sound(snd_bigdoor_open, 1, false);
}
if (flying == true)
	image_angle += 0.4;
