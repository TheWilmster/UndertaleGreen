if (global.school_time_sequence == 1 || global.school_time_sequence == 2)
	instance_destroy(self);
global.msg[0] = "[character,none,-1][delay,1]* The door is locked.[/page]";
global.msg_esp[0] = "[character,none,-1][delay,1]* La puerta está cerrada.[/page]";
if (global.school_time_sequence != 3)
{
	global.msg[1] = "[character,none,-1][delay,1]* ...[delay,333]Maybe there's another way\n  in.";
	global.msg_esp[1] = "[character,none,-1][delay,1]* ...[delay,333]Seguramente haya otra\n manera de entrar.";
}
else
{
	global.msg[1] = "[character,none,-1][delay,1]* There's probably no way in at\n  this hour.";
	global.msg_esp[1] = "[character,none,-1][delay,1]* Seguramente no haya ninguna\n manera de entrar ahora.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
