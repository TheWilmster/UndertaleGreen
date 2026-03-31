if (global.office_cutscene == false)
{
	global.msg[0] = "[character,none,-1][delay,5]* It's Chai's car.[/page]";
	global.msg[1] = "[character,none,-1][delay,5]* You think about how cool you'd\n  be if you could drive.[/page]";
	global.msg[2] = "[character,none,-1][delay,5]* You vow to get an even cooler\n  car than your sister.[/page]";
	global.msg[3] = "[character,none,-1][delay,5]* Maybe then she'll hang out\n  with you.";
	global.msg_esp[0] = "[character,none,-1][delay,5]* Es el coche de Chai.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,5]* Piensas cómo te admirarían\n con un coche como este.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,5]* Te juras comprarte algún día\n  un coche mejor que este.[/page]";
	global.msg_esp[3] = "[character,none,-1][delay,5]* A lo mejor tu hermana\n  quedaría contigo.";
	instance_create_depth(x, y, -1000, obj_textboxNEW);
}
