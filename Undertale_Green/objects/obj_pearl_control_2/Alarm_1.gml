for (var i = 0; i < 3; i += 1)
{
	instance_create_depth(0, 0, obj_heart.depth - 1, obj_pearl_atk2, 
	{
		angle: theta1
	});
	theta1 += 0.3490658503988659;
}
audio_play_sound(snd_spearappear, 1, false);
