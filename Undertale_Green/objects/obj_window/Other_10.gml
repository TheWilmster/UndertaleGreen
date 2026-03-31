if (global.school_time_sequence != 3)
{
	global.msg[0] = "[character,none,-1][delay,5]* You're too short to see out\n  of the window.[/page]";
	global.msg[1] = "[character,none,-1]* In your head,[delay,333] you picture a\n  majestic view...[/page]";
	global.msg[2] = "[character,none,-1]* ...of parking lots and\n  supermarkets.";
}
else
{
	global.msg[0] = "[character,none,-1][delay,5]* You're too short to see out\n  of the window.[/page]";
	global.msg[1] = "[character,none,-1]* In your head,[delay,333] you picture a\n  majestic view...[/page]";
	global.msg[2] = "[character,none,-1]* ...of parking lots and\n  supermarkets...[/page]";
	global.msg[3] = "[character,none,-1]* Illuminated by buzzing\n  streetlamps.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
