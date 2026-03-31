global.msg[0] = "[character,eden,getover][delay,1]* Who is it?[freeze][delay,2300][/page]";
global.msg[1] = "[character,gray,shout][delay,1][continue]* I don't know,[freeze][delay,333][continue] it might\n  be Kaitlyn.[freeze][delay,2300][/page]";
global.msg[2] = "[character,eden,getover][delay,1][continue]* It better be![freeze][delay,2300][hall2]";
instance_create_depth(x, y, -1000, obj_textboxUnskip);
