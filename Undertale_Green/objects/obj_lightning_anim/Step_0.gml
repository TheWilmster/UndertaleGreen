if (fadein == true)
{
	image_alpha += 0.1;
	if (image_alpha >= 1)
		fadein = false;
}
if (fadeout == true)
{
	image_alpha -= 0.05;
	image_xscale -= 0.025;
	if (image_alpha <= 0)
		instance_destroy();
	x = def_x + (3 * sin(siner));
	y = def_y + (3 * cos(siner));
}
if (obj_battle_system.turn != BattleTurn.ENEMY)
	instance_destroy();
randomize();
siner += random_range(1, 5);
