global.msg[0] = "[character,none,-1][delay,1]* WHERE DID EVERYONE GO I'M\n  AT MY LIMIT[groverran]";
instance_create_depth(x, y, -1000, obj_textboxNEW, 
{
	txt_y: -312,
	textspeed: 1
});
audio_play_sound(snd_impact, 1, false);
obj_player.shake = 4;
