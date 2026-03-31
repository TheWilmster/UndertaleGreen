image_speed = 0;
depth = -9000;
is_active = false;
if (global.language == 0)
	sprite_index = spr_button_fight;
else if (global.language == 1)
	sprite_index = spr_button_fight_esp;
if (global.battle_plush == true)
	instance_destroy();
