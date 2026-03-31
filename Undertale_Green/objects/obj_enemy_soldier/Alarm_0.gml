if (obj_battle_system.turn == BattleTurn.ENEMY && obj_enemy_chai.chai_talk == false)
{
	if (obj_heart.x < 320)
		instance_create_depth(max(obj_heart.x + 8, (320 - (obj_enemy_chai.lightning_boundaries / 2)) + 24), -35, obj_heart.depth + 1, obj_lightning_anim);
	if (obj_heart.x >= 320)
		instance_create_depth(min(obj_heart.x + 8, (320 + (obj_enemy_chai.lightning_boundaries / 2)) - 24), -35, obj_heart.depth + 1, obj_lightning_anim);
	alarm[0] = 55;
}
