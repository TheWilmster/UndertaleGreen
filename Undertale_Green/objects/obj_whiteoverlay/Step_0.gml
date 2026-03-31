if (fadein == true)
{
	image_alpha += 0.006;
	if (!audio_is_playing(snd_exit))
	{
		global.forest_cutscene = 2;
		room_goto(rm_spookyforest);
		instance_destroy(obj_textboxNEW);
		global.msg = [];
	}
}
