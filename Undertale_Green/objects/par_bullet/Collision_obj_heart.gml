if (other.invincible == false)
{
	other.image_index += 1;
	other.invincible = true;
	if (!instance_exists(obj_enemy_chai))
		global.hp = max(global.hp - round(damage * obj_battle_system.damage_multiplier), 0);
	else if (global.hp > 1)
		global.hp = max(global.hp - round(damage * obj_battle_system.damage_multiplier), 1);
	else
		global.hp = 0;
	other.shake = 4;
	audio_play_sound(snd_hurt1_c, 80, false);
}
