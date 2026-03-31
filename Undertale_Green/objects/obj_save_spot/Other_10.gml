if (!array_contains(global.journal, 6) && global.fun >= 75 && global.fun <= 85)
	global.save_photo = 6;
if (!array_contains(global.journal, 1))
	global.save_photo = 1;
global.msg[0] = "[character,none,-1][delay,1]* (You decide to draw a picture\n  to remember the moment.)[/page]";
global.msg[1] = "[character,none,-1][open_save][delay,5555]";
global.msg_esp[0] = "[character,none,-1][delay,1]* (Has decidido pintar un dibujo\n  para recordar el momento.)[/page]";
global.msg_esp[1] = "[character,none,-1][open_save][delay,5555]";
instance_create_depth(x, y, -1000, obj_textboxNEW);
