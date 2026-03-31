if (obj_textboxNEW.choice == 0)
{
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	global.msg[0] = "[character,none,-1]* You decide you don't need\n  any help.";
	global.msg_esp[0] = "[character,none,-1]* Decides que no necesitas\n  ninguna ayuda.";
}
