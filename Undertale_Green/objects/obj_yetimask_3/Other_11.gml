if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		global.msg[0] = "[character,none,-1]* (You don't have enough room.)";
		global.msg_esp[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		global.msg[0] = "[character,none,-1][additemhelmet]* (You picked up the Yeti Helmet.)\n[delay,333]* (Third time's the charm.)";
		global.msg_esp[0] = "[character,none,-1][additemhelmet]* (La agarras por tercera vez.)\n[delay,333]* (A la tercera va la vencida.)";
		instance_destroy(self);
	}
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave it on the ground.)";
	global.msg_esp[0] = "[character,none,-1]* (La dejas en el suelo.)";
}
