if (obj_textboxNEW.choice == 0)
{
	global.msg[0] = "[character,none,-1]* You wave it around like a\n  sword.";
	global.msg_esp[0] = "[character,none,-1]* Juegas con ella como si\n  de una espada se tratase.";
}
else
{
	global.msg[0] = "[character,none,-1]* Now's not the time for fun.";
	global.msg_esp[0] = "[character,none,-1]* No hay diversión que tener\n  en estos momentos.";
}
show_debug_message(global.msg);
