if (obj_textboxNEW.choice == 0)
{
	if (array_length(global.inventory) >= 8)
	{
		global.msg[0] = "[character,none,-1]* (You don't have enough room.)";
		global.msg_esp[0] = "[character,none,-1]* (No tienes suficiente espacio.)";
	}
	if (array_length(global.inventory) < 8)
	{
		global.msg[0] = "[character,none,-1][additemmasterkey]* (You picked up the Master\n  Keys.)";
		global.msg_esp[0] = "[character,none,-1][additemmasterkey]* (Te llevas las Llaves\n  Maestras.)";
		global.items_collected[0] = 1;
		instance_destroy(self);
	}
}
else
{
	global.msg[0] = "[character,none,-1]* (You leave the Master Keys\n  behind.)";
	global.msg_esp[0] = "[character,none,-1]* (No agarras las Llaves\n  Maestras.)";
}
