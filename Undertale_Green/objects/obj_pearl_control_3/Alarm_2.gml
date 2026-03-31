for (var i = 0; i < 4; i += 1)
{
	instance_create_depth(0, 0, obj_heart.depth - 1, obj_pearl_atk3, 
	{
		angle: theta2
	});
	theta2 += 0.36959913571644626;
}
audio_play_sound(snd_spearappear, 1, false);
