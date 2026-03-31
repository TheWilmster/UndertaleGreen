global.talking = self;
global.save_photo = 22;
if (global.school_time_sequence == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Heya,[delay,333] kid.[delay,333]\n* You best stay away from here.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* We got a buncha rats runnin'\n  around in these vents.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* And I ain't talkin' about\n  politicians![/page]";
	global.msg[3] = "[character,none,-1][delay,1]* ...[delay,333]Swing and a miss.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Hola,[delay,333] peque.[delay,333]\n* Mejor que te alejess.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* Tenemos un montón de\n  ratas en los ductos.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* ¡Y no hablo sobre\n  sobre políticos![/page]";
	global.msg_esp[3] = "[character,none,-1][delay,1]* ...[delay,333]Ba-da,[delay,333] tsss.";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Still dealin' with these\n  rats,[delay,333] kid.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
