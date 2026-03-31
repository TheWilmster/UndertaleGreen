if (obj_textboxNEW.choice == 0)
{
	global.save_photo = 5;
	progress = 1;
	instance_destroy(obj_textboxNEW);
}
else
{
	global.msg[0] = "[character,none,-1]* (Maybe another time.)";
	global.msg_esp[0] = "[character,none,-1]* (A lo mejor más tarde.)";
}
