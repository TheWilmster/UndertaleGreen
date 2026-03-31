vspeed += 0.2;
image_angle -= rotation;
if (x >= 220 && x <= 420 && y >= 367)
{
	vspeed = bounceheight;
	bouncetime += 1;
	audio_play_sound(snd_bigdoor_open, 1, false);
	obj_heart.shake = 2;
}
