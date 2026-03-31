if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		global.msg[0] = "[character,none,-1]* (You don't have enough room.)";
		global.msg_esp[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		global.msg[0] = "[character,none,-1][additemhelmet]* (You picked up the Yeti Helmet.\n[delay,333]  Again.)";
		global.msg_esp[0] = "[character,none,-1][additemhelmet]* (Has agarrado la cabeza\n  del Yeti.[delay,333]  Otra vez.)";
		instance_destroy(self);
	}
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave it on the ground.)";
	global.msg_esp[0] = "[character,none,-1]* (La dejas donde estaba.)";
}
