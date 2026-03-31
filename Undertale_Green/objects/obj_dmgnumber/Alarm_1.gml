selected_enemy.x += shudder;
if (shudder < 0)
	shudder = -(shudder + 2);
else
	shudder = -shudder;
if (shudder == 0)
{
	selected_enemy.sprite_index = selected_enemy.normal_img;
	obj_battle_system.turn = BattleTurn.ENEMY;
	exit;
}
alarm[1] = 2;
