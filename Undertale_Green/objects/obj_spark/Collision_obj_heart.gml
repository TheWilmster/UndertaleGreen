if (other.invincible == false)
{
	other.image_index += 1;
	other.invincible = true;
	global.hp -= round(damage * obj_battle_system.damage_multiplier);
	other.shake = 4;
	audio_play_sound(snd_hurt1_c, 80, false);
}
instance_destroy();
