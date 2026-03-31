if (global.intro_cut_parkinglot == false)
{
	instance_destroy(self);
}
else
{
	depth = -9999;
	hspeed = -2;
	audio_play_sound(mus_school_intro, 1, false);
}
