global.msg[0] = "[character,eden,happysleep][delay,1]* Care to join me,[freeze][delay,333][continue]\n  Olive?[choice]";
global.choices[0] = "[character,eden,happysleep]\nYes";
global.choices[1] = "[character,eden,happysleep]\nNo";
instance_create_depth(x, y, -1000, obj_textboxNEW);
