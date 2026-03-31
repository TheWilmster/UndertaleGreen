if (!audio_is_playing(mus_rat_ride_reprise))
	audio_play_sound(mus_rat_ride_reprise, 1, false);
hspeed = 3.5;
image_index = 2;
image_speed = 0;
depth = -bbox_bottom;
stop = 0;
mouse_speed = 4;
fall = 0;
randomize();
deathrot = random_range(1, 3);
