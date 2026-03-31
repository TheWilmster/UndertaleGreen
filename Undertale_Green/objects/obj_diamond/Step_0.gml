vspeed += 0.2;
image_angle -= rotation;
if (x >= 220 && x <= 420 && y >= 350)
{
	vspeed = bounceheight;
	bouncetime += 1;
	audio_play_sound(snd_clash, 1, false);
	obj_heart.shake = 6;
}
