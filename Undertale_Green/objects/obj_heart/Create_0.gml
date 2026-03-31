heartbeat = false;
if (global.battle_plush == true)
{
	sprite_index = spr_heart_real;
	if (global.heart_beated == false)
	{
		heartbeat = true;
		instance_create_depth(514, 455, -9999999, obj_heart_beat);
		visible = false;
		global.heart_beated = true;
	}
}
player_turn = true;
move_time = 0;
movespeed = 3;
option = 0;
option_x = 0;
option_y = 0;
hsp = 0;
vsp = 0;
shake = 0;
depth = -9999;
image_speed = 0;
selected_enemy = -1;
curr_menu = BattleMenu.MAIN;
sub_menu = 0;
end_turn = 0;
confirm_pressed = false;
hp = 20;
maxhp = 20;
invincible = false;
iframes = 30;
