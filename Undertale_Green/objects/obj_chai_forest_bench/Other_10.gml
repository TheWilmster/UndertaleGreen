if (global.chai_entered == false)
{
	global.msg[0] = "[character,chai,neutral][delay,1]* Sit down.";
	global.msg_esp[0] = "[character,chai,neutral][delay,1]* Siéntate.";
}
if (global.chai_entered == true)
{
	global.msg[0] = "[character,chai,smile][delay,1]* Alright.[freeze][delay,333][continue]\n* Let's go![/page][battle,chai]";
	global.msg_esp[0] = "[character,chai,smile][delay,1]* Vale.[freeze][delay,333][continue]\n* ¡Hagámoslo![/page][battle,chai]";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
