if (oscillate == true)
	t += 0.13;
if (oscillate == false && fall == true)
{
	vspeed += 1.1;
	if (y >= 300)
	{
		fall = false;
		audio_play_sound(snd_clash, 1, false);
		obj_heart.shake = 6;
		vspeed = -5;
	}
}
if (oscillate == false && fall == false && y <= 140)
{
	oscillate = true;
	vspeed = 0;
	randomize();
	hit = random_range(10, 45);
	alarm_set(0, hit);
}
x = (70 * sin(t)) + 320;
