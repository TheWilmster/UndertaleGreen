array_push(follow_x, obj_heart.x);
array_delete(follow_x, 0, 1);
array_push(follow_y, obj_heart.y);
array_delete(follow_y, 0, 1);
if (follow_player == true)
{
	move_towards_point(follow_x[0], follow_y[0], orb_speed);
	if (orb_speed >= 1.3)
		orb_speed -= 0.1;
}
siner += 0.3;
y += (0.33 * sin(siner));
if (fadein == true)
	image_alpha += 0.1;
if (!audio_is_playing(snd_pull))
	audio_play_sound(snd_pull, 1, false, 0.8);
