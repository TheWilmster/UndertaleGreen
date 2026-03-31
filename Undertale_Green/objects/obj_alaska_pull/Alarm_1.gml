shake = true;
hspeed = 0.2;
pulltimes += 1;
image_index = 5;
audio_play_sound(snd_pull, 1, false);
if (pulltimes <= 2)
	alarm[0] = 35;
else
	alarm[2] = 35;
