instance_create_depth(enemy.x, enemy.y - enemy.spr_h, -10000, obj_dmgnumber, 
{
	damage: global.damage_output,
	selected_enemy: enemy
});
audio_play_sound(snd_damage_c, 80, false);
