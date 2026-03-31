if (global.school_time_sequence != 3)
{
	global.msg[0] = "[character,none,-1][delay,1]* It's Chai's car.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* You think about how cool you'd\n  be if you could drive.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* You vow to get an even cooler\n  car than your sister.[/page]";
	global.msg[3] = "[character,none,-1][delay,1]* Maybe then she'd hang out\n  with you.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Es el coche de Chai.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* áéíóúñ";
	global.save_photo = 3;
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Chai's friends have filled\n  every seat in the car.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
