if (global.fun >= 10 && global.fun <= 20)
{
	global.msg[0] = "[character,none,-1][delay,1]* Looks like a painting of\n  an eye.[/page]";
	global.msg[1] = "[character,none,-1][delay,1]* Somehow,[delay,333] you figure it still\n  fits in with the rest of them.";
}
else
{
	global.msg[0] = "[character,none,-1][delay,1]* Looks like a painting of\n  Mt. Ebott a long time ago.";
	global.msg_esp[0] = "[character,none,-1][delay,1]* Parece ser una pintura del\n  monte Ebott bastante vieja.";
}
instance_create_depth(x, y, -1000, obj_textboxNEW);
