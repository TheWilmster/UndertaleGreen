groverrun = false;
obj_player.curr_state = PlayerState.INTERACT;
global.msg[0] = "[character,alaska,smug][delay,1]* See?";
global.msg_esp[0] = "[character,alaska,smug][delay,1]* ¿Ves?";
instance_create_depth(x, y, -1000, obj_textboxNEW);
