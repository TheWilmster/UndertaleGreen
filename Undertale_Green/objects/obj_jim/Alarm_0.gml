global.msg[0] = "[character,none,-1][delay,1]* You're kidding.[/page]";
global.msg[1] = "[character,none,-1][delay,1]* ...[/page]";
global.msg[2] = "[character,none,-1][delay,1]* The name's Jim.[delay,333]\n* That's my fourth name this\n  week.";
instance_create_depth(x, y, -1000, obj_textboxNEW);
roybit = false;
obj_player.curr_state = PlayerState.INTERACT;
