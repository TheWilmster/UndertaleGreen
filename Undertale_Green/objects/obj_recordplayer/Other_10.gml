if (!audio_is_playing(mus_itseden))
{
	DIALOG[0] = "[character,none,-1][delay,1]* It's a record player.[/page]";
	DIALOG[1] = "[character,none,-1][delay,1]* Play a song?[choice]";
	global.choices[0] = "[character,none,-1]\nYes";
	global.choices[1] = "[character,none,-1]\nNo";
}
else
{
	DIALOG[0] = "[character,none,-1][delay,1]* (You're enjoying the vibe.)";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
