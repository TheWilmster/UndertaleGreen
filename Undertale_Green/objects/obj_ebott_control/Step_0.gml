if (musictest == true && !instance_exists(obj_chai_flashbackdummy))
{
	audio_play_sound(mus_ebott, 1, true);
	audio_sound_gain(mus_ebott, 0, 0);
	audio_sound_gain(mus_ebott, 0.68, 2000);
	musictest = false;
}
