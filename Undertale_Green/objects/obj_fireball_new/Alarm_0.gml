if (largejump_toggle == true && largejump == jumptimes)
{
	alarm[1] = 5;
	alarm[3] = 10;
	alarm[2] = 30;
	depth -= 99;
	audio_play_sound(snd_noise, 1, false, 0.5);
	b_x = x;
	shake = true;
}
else
{
	jump = true;
	jumptimes += 1;
	vspeed = -3.5;
}
