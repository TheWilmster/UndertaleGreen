theta1 = player_theta - 0.7391982714328925;
theta2 = player_theta - 0.5543987035746694;
for (var i = 0; i < 5; i += 1)
{
	instance_create_depth(0, 0, obj_heart.depth - 1, obj_pearl_atk3, 
	{
		angle: theta1
	});
	theta1 += 0.36959913571644626;
}
audio_play_sound(snd_spearappear, 1, false);
