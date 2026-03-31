function draw_ui(arg0, arg1, arg2, arg3)
{
	draw_set_color(c_white);
	draw_rectangle(arg0, arg1, arg2, arg3, false);
	draw_set_color(c_black);
	draw_rectangle(arg0 + 6, arg1 + 6, arg2 - 6, arg3 - 6, false);
	draw_set_color(c_white);
}

function draw_ui_small(arg0, arg1, arg2, arg3)
{
	draw_set_color(c_white);
	draw_rectangle(arg0, arg1, arg2, arg3, false);
	draw_set_color(c_black);
	draw_rectangle(arg0 + 3, arg1 + 3, arg2 - 3, arg3 - 3, false);
	draw_set_color(c_white);
}

function draw_ui_text(arg0, arg1, arg2, arg3)
{
	draw_set_font(arg3);
	draw_text_ext_transformed(arg0, arg1 - 3, arg2, 2, 999, 2, 2, 0);
}

function draw_shop_text(arg0, arg1, arg2, arg3)
{
	draw_set_font(arg3);
	draw_text_ext_transformed(arg0, arg1 - 3, arg2, 16, 999, 1, 1, 0);
}

function create_item(arg0, arg1, arg2, arg3, arg4) constructor
{
	label = arg0;
	desc = arg1;
	shop_desc = arg2;
	can_trash = arg3;
	effect = arg4;
}

function add_item(arg0)
{
	array_push(global.inventory, arg0);
}

function item_effect()
{
	switch (argument0)
	{
		case 0:
			global.msg[0] = "[character,none,-1][delay,1]* The thing feels wealthy.";
			global.money += 99999999;
			break;
		case 1:
			global.msg[0] = "[character,none,-1][delay,1]* Suddenly you have a toothache.";
			audio_play_sound(snd_heal, 1, false);
			global.hp = min(global.hp + 10, 20);
			break;
		case 2:
			if (global.deliverable == false)
				global.msg[0] = "[character,none,-1][delay,1]* (This item needs to be scanned\n  somewhere.)";
			if (global.deliverable == true)
				global.msg[0] = "[character,none,-1][delay,1]* (You scan the Keycard.)";
			break;
		case 3:
			if (global.deliverable == false)
				global.msg[0] = "[character,none,-1][delay,1]* (You should probably find its\n  owner.)";
			if (global.deliverable == true)
				global.msg[0] = "[character,none,-1][delay,1]* (You scan the Keycard.)";
			if (room == rm_battle)
			{
				global.msg[0] = "[character,none,-1][delay,1]* (You put on the Yeti Helmet.)[/page]";
				global.msg[1] = "[character,none,-1][delay,1][victory]* (Congrats!)[delay,333]\n* (It didn't do anything!)[/page]";
				global.msg[2] = "[character,none,-1][delay,1]* (...[delay,333]You took the Yeti Helmet\n  off.)";
			}
			break;
		case 4:
			global.msg[0] = "[character,none,-1][delay,1]* You eat the Blueberries.[delay,333]\n* They're sour.";
			audio_play_sound(snd_heal, 1, false);
			global.hp = min(global.hp + 6, 20);
			break;
		case 5:
			global.msg[0] = "[character,none,-1][delay,1]* You eat the Raisinettes.[delay,333]\n* They taste exactly how you\n  expected them to.";
			audio_play_sound(snd_heal, 1, false);
			global.hp = min(global.hp + 6, 20);
			break;
		case 6:
			global.msg[0] = "[character,none,-1][delay,1]* You eat the Chocolate Muffin.[delay,333]\n* The texture was very\n  vending-machine-like.";
			audio_play_sound(snd_heal, 1, false);
			global.hp = min(global.hp + 15, 20);
			break;
		case 7:
			if (global.deliverable == false)
				global.msg[0] = "[character,none,-1][delay,1]* (Maybe it can unlock something.)";
			if (room == rm_battle)
			{
				global.msg[0] = "[character,none,-1][delay,1]* (You feel the keys in your\n  pocket.)[/page]";
				global.msg[1] = "[character,none,-1][delay,1]* (You can't help but feel like\n  you're missing something...)[/page]";
				global.msg[2] = "[character,none,-1][delay,1]* (Suddenly,[delay,333] you feel\n  disappointed.)";
			}
			break;
		case 8:
			if (global.deliverable == false)
				global.msg[0] = "[character,none,-1][delay,1]* (You should find a way to\n  get it back to her.)";
			if (room == rm_battle)
			{
				global.msg[0] = "[character,none,-1][delay,1]* (You feel the Necklace in\n  your pocket.)[/page]";
				global.msg[1] = "[character,none,-1][delay,1]* (You can't help but feel like\n  you're missing something...)[/page]";
				global.msg[2] = "[character,none,-1][delay,1]* (Maybe you should look around\n  more.)";
			}
			break;
	}
}

function parse_items()
{
	global.itemlist = 
	{
		test: new create_item("Test", "[character,none,-1][delay,1]* 'Test' - Gives 9999G\n* A fun thing.", "", false, 0),
		jollypop: new create_item("Jollypop", "[character,none,-1][delay,1]* 'Jollypop' - Heals 10 HP\n* Hope you have a sweet\n  tooth.", "Heals 10HP\nToo sweet!", true, 1),
		keycard: new create_item("Keycard", "[character,none,-1][delay,1]* Eden's keycard.[delay,333]\n* She's mid-blink in her ID\n  photo.", "", false, 2),
		helmet: new create_item("Yeti Helmet", "[character,none,-1][delay,1]* A headpiece to a costume.[delay,333]\n* (Someone's probably looking for\n  this.)", "Thanks\nfor the\napology.", false, 3),
		blueberry: new create_item("Blueberries", "[character,none,-1][delay,1]* 'Blueberries' - Heals 6 HP\n* Not quite as good as the ones\n  on Ebott.", "Heals 6HP\nit's blue\nand a\nberry!", true, 4),
		raisin: new create_item("Raisinettes", "[character,none,-1][delay,1]* 'Raisinettes' - Heals 6 HP\n* A tiny pack of raisins.[delay,333] There's\n  barely any food here.", "Heals 6HP\nA tiny\nburst of\nflavor.", true, 5),
		muffin: new create_item("C. Muffin", "[character,none,-1][delay,1]* 'Chocolate Muffin' - Heals 15 HP\n* It's been smooshed from being\n  in your pocket.", "Heals 15HP\nI baked\nthem\nmyself!", true, 6),
		masterkey: new create_item("Master Keys", "[character,none,-1][delay,1]* A master set of keys to the\n  school.[delay,333]\n* (...[delay,333]What does it unlock?)", "Heals 14HP\nI baked\nthem\nmyself!", false, 7),
		necklace: new create_item("Necklace", "[character,none,-1][delay,1]* A necklace Eden made for Gray.[delay,333]\n* (She's probably looking for\n  this.)", "Heals 14HP\nI baked\nthem\nmyself!", false, 8)
	};
}
