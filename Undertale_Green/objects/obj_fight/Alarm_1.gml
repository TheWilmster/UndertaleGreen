global.damage_output = 0;
instance_create_depth(enemy.x, enemy.y - enemy.spr_h, depth - 1, obj_miss, 
{
	selected_enemy: enemy
});
instance_destroy(obj_pawn);
instance_destroy(obj_queen);
instance_destroy();
obj_battle_system.turn = BattleTurn.ENEMY;
