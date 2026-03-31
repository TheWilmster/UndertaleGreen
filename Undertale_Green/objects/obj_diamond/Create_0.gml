randomize();
image_speed = 0;
image_index = 0;
damage = 4;
audio_play_sound(snd_arrow, 1, false);
depth = -100000;
if (x > 320)
	rotation = random_range(-8, 0);
if (x < 320)
	rotation = random_range(0, 8);
bouncetime = 1;
bounceheight = (8 * vspeed) / 6;
