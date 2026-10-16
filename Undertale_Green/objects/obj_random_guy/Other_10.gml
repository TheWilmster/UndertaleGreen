global.talking = self;
DIALOG[0] = "[character,none,-1][delay,5]* It's me![freeze][delay,333][continue] I'm the janitor!";
DIALOG_ESP[0] = "[character,none,-1][delay,5]* ¡Soy yo![freeze][delay,333][continue] ¡Soy el conserje!";
instance_create_depth(x, y, -1000, obj_textboxNEW);
