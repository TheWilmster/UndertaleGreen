parse_items();
damage_multiplier = 1;
instance_create_depth(x, y, -99999, obj_hud);
turn = BattleTurn.NONE;
enemy = [-1, -1, -1];
if (global.battle_eden == true)
	enemy[0] = instance_create_depth((room_width / 2) - 4, 244, -99, obj_enemy_eden);
if (global.battle_gray == true)
	enemy[0] = instance_create_depth((room_width / 2) - 4, 244, -99, obj_enemy_gray);
if (global.battle_chai == true)
	enemy[0] = instance_create_depth(room_width / 2, 244, -99, obj_enemy_chai);
if (global.battle_plush == true)
	enemy[0] = instance_create_depth(room_width / 2, 244, -99, obj_enemy_plush);
contfight = false;
confirm = keyboard_check_pressed(ord("Z"));
xwrite = 0;
e_text_shown = 0;
page = 1;
timer = -1;
hp = 20;
maxhp = 20;
global.half_op = 1;
for (var i = 0; i < array_length(enemy); i++)
{
	if (enemy[i] != -1)
	{
		enemy[i].image_xscale = 2;
		enemy[i].image_yscale = 2;
	}
}
