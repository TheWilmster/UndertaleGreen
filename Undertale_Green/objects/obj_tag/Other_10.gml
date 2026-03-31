global.talking = self;
global.save_photo = 14;
if (global.second_dia[2] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* Tag![freeze][delay,333][continue]\n* You're it!";
	global.msg_esp[0] = "[character,none,-1][delay,1]* ¡Ja ja![freeze][delay,333][continue]\n* ¡Te he pillado!";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Oh.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* You got me.[/page]";
	global.msg[2] = "[character,none,-1][delay,1]* Guess I shoulda moved.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Oh.[/page]";
	global.msg_esp[1] = "[character,none,-1][delay,1]* Me has pillado.[/page]";
	global.msg_esp[2] = "[character,none,-1][delay,1]* Debería de haber dicho que\n  no vale chicle.";
}
global.second_dia[2] = 1;
instance_create_depth(x, y, -1000, obj_textboxNEW);
