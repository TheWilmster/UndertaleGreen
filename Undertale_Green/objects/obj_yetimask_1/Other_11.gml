if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		global.msg[0] = "[character,none,-1]* (You don't have enough room.)";
		global.msg_esp[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		global.msg[0] = "[character,none,-1][additemhelmet]* (You picked up the Yeti\n  Helmet.)";
		global.msg_esp[0] = "[character,none,-1][additemhelmet]* (Te has llevado la cabeza\n  del Yeti.)";
		instance_destroy(self);
	}
	global.save_photo = 2;
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave it on the table.)";
	global.msg_esp[0] = "[character,none,-1]* (La dejas sobre la mesa.)";
}
