if (global.second_dia[5] == 0)
{
	global.msg[0] = "[character,none,-1][delay,1]* The name's Roy.[delay,333]\n* Don't wear it out.[royslide]";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Me llamo Roy.[delay,333]\n* No lo pongas por ahí.[royslide]";
	roybit = true;
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* The name's Jim.[delay,333]\n* Don't wear it out.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Me llamo Jim.[delay,333]\n* No TE lo pongas por ahí.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
