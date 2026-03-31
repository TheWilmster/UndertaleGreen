if (obj_textboxNEW.choice == 0)
{
	global.page_number = binder_page;
	global.msg[0] = "[character,none,-1]* You take a look.[binderopen]";
	global.msg_esp[0] = "[character,none,-1]* Decides echarle un vistazo.[binderopen]";
}
else
{
	global.msg[0] = "[character,none,-1]* Probablemente inteligente.[delay,333]\n* It's clearly not for your\n  eyes.";
	global.msg_esp[0] = "[character,none,-1]* Probablemente sea algo\n  inteligente.[delay,333]\n* No lo comprendes para nada.";
}
