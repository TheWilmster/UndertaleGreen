image_speed = 0;
image_alpha = 0;
audio_play_sound(snd_spearappear, 1, false);
fadein = true;
alarm[0] = 20;
alarm[1] = 50;
alarm[2] = 90;
randomize();
left = false;
right = false;
if (x < 320)
	left = true;
if (x > 320)
	right = true;
kick = false;
speed_x = 0;
speed_y = 0;
y_slope = 0;
damage = 3;
shoot = false;
shoot_bounce_y = false;
shoot_bounce_x = false;
