if (global.yeti_for_purchase == false)
{
	item_index = [global.itemlist.raisin, global.itemlist.jollypop, global.itemlist.muffin];
	prices = [1, 3, 6];
}
else if (global.yeti_for_purchase == true)
{
	item_index = [global.itemlist.helmet, global.itemlist.jollypop, global.itemlist.muffin];
	prices = [0, 3, 6];
}
confirm = keyboard_check_pressed(ord("Z"));
cancel = keyboard_check_pressed(ord("X"));
up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);
siner += 1;
if (shake == true)
	shop_x += (1.2 * sin(2 * siner));
else
	shop_x = 0;
switch (curr_menu)
{
	case ShopMenu.MAIN:
		item_desc_y = 81;
		item_outcome = -1;
		if (!instance_exists(obj_shop_text))
		{
			global.msg[0] = "[character,shopkeep,normal][delay,1]* H-[freeze][delay,150][continue]Hey, welcome to my\n  shop!![delay,333]\n* All proceeds go to\n  l-[freeze][delay,150][continue]local research led\n  by me[delay,666] and my team!";
			global.msg_esp[0] = "[character,shopkeep,normal][delay,1]* ¡O-[freeze][delay,150][continue]Oye, esta es mi\n  tienda!![delay,333]\n* Todo lo recaudado va\n  a-[freeze][delay,150][continue]a mi investigación\n [delay,666] ¡nuestra!,[freeze][delay,333][continue] tengo un equipo";
			instance_create_depth(x, y, -1000, obj_shop_text);
		}
		sub_menu = 0;
		if (down)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (option < 2)
				option++;
			else
				option = 0;
		}
		if (up)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (option > 0)
				option--;
			else
				option = 2;
		}
		if (confirm)
		{
			audio_play_sound(snd_select, 0, false);
			if (instance_exists(obj_shop_text))
				instance_destroy(obj_shop_text);
			if (option == 0)
				curr_menu = ShopMenu.BUY;
			if (option == 1)
				curr_menu = ShopMenu.TALK;
			if (option == 2)
			{
				global.msg[0] = "* O-[freeze][delay,150][continue]okay,[freeze][delay,333][continue] bye!";
				var text = instance_create_depth(x, y, -1000, obj_shop_text);
				text.can_skip = true;
				text.exiting = true;
				curr_menu = ShopMenu.EXIT;
			}
			option = 0;
		}
		break;
	case ShopMenu.BUY:
		if (sub_menu == 0)
		{
			if (!instance_exists(obj_shop_text))
			{
				if (item_outcome == -1)
					global.msg[0] = "[character,shopkeep,crafty]W-[freeze][delay,150][continue]what'll\nit be?";
				if (item_outcome == 0)
					global.msg[0] = "[character,shopkeep,normal]Th-[freeze][delay,150][continue]thank\nyou!";
				if (item_outcome == 1)
					global.msg[0] = "[character,shopkeep,nervous]Uhh,[freeze][delay,150][continue] you\ndon't have\nenough\nmoney.";
				if (item_outcome == 2)
					global.msg[0] = "[character,shopkeep,normal]Looking\naround?";
				if (item_outcome == 3)
					global.msg[0] = "[character,shopkeep,nervous]Uhh,[freeze][delay,150][continue] you\ndon't have\nenough\nroom.";
				var text = instance_create_depth(x, y, -1000, obj_shop_text);
			}
			if (down)
			{
				audio_play_sound(snd_squeak, 0, false);
				if (option < 3)
					option++;
				else
					option = 0;
			}
			if (up)
			{
				audio_play_sound(snd_squeak, 0, false);
				if (option > 0)
					option--;
				else
					option = 3;
			}
		}
		else
		{
			if (down)
			{
				audio_play_sound(snd_squeak, 0, false);
				if (option < 1)
					option++;
				else
					option = 0;
			}
			if (up)
			{
				audio_play_sound(snd_squeak, 0, false);
				if (option > 0)
					option--;
				else
					option = 1;
			}
		}
		if (confirm)
		{
			if (sub_menu == 0)
			{
				audio_play_sound(snd_select, 0, false);
				if (instance_exists(obj_shop_text))
					instance_destroy(obj_shop_text);
				if (option == 3)
				{
					curr_menu = ShopMenu.MAIN;
					option = 0;
				}
				else
				{
					selected_item = option;
					sub_menu++;
				}
				option = 0;
			}
			else
			{
				if (option == 0)
				{
					if (global.money >= prices[selected_item])
					{
						if (array_length(global.inventory) < 8)
						{
							audio_play_sound(snd_buyitem, 0, false);
							item_outcome = 0;
							if (selected_item == 0 && global.yeti_for_purchase == false)
								array_push(global.inventory, global.itemlist.raisin);
							if (selected_item == 0 && global.yeti_for_purchase == true)
							{
								array_push(global.inventory, global.itemlist.helmet);
								global.yeti_for_purchase = false;
							}
							if (selected_item == 1)
								array_push(global.inventory, global.itemlist.jollypop);
							if (selected_item == 2)
								array_push(global.inventory, global.itemlist.muffin);
							global.money -= prices[selected_item];
						}
						else
						{
							item_outcome = 3;
							audio_play_sound(snd_select, 0, false);
						}
					}
					else
					{
						item_outcome = 1;
						audio_play_sound(snd_select, 0, false);
					}
				}
				else
				{
					item_outcome = 2;
					audio_play_sound(snd_select, 0, false);
				}
				option = selected_item;
				sub_menu = 0;
			}
		}
		if (cancel)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (instance_exists(obj_shop_text))
				instance_destroy(obj_shop_text);
			if (sub_menu == 1)
			{
				sub_menu = 0;
				option = selected_item;
			}
			else
			{
				curr_menu = ShopMenu.MAIN;
				option = 0;
			}
		}
		break;
	case ShopMenu.TALK:
		if (!instance_exists(obj_shop_text))
		{
			global.msg[0] = "[character,shopkeep,nervous]...[delay,333]Huh?";
			instance_create_depth(0, 0, depth, obj_shop_text);
		}
		if (down)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (option < 4)
				option++;
			else
				option = 0;
		}
		if (up)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (option > 0)
				option--;
			else
				option = 4;
		}
		if (confirm)
		{
			audio_play_sound(snd_select, 0, false);
			switch (option)
			{
				case 0:
					if (instance_exists(obj_shop_text))
						instance_destroy(obj_shop_text);
					if (!instance_exists(obj_shop_text) && global.shopkeep_tree[0] == 0)
					{
						global.shopkeep_tree[0] = 1;
						global.msg[0] = "[character,shopkeep,normal]* Ch-[freeze][delay,150][continue]Chai?[/page]";
						global.msg[1] = "[character,shopkeep,normal]* What do you know about Chai?[freeze][delay,333][continue]\n* Are you friends with h-[freeze][delay,150][continue]her?[/page]";
						global.msg[2] = "[character,shopkeep,intimidated]* If you are then you're in\n  g-[freeze][delay,150][continue]grave danger![freeze][delay,333][continue]\n* Her family and their so-called\n  'bakery' run this city right\n  under our n-[freeze][delay,150][continue]noses!![/page]";
						global.msg[3] = "[character,shopkeep,intimidated]* They've befriended the m-[freeze][delay,150][continue]mosters\n  on Ebott and used them to scare\n  off competition![freeze][delay,333][continue]\n* It's genius!![freeze][delay,333][continue]\n* EVIL GENIUS!!![/page]";
						global.msg[4] = "[character,shopkeep,confident]* I bet they've b-[freeze][delay,150][continue]been around for\n  years![freeze][delay,333][continue]\n* They probably even knew A...[/page]";
						global.msg[5] = "[character,shopkeep,normal]* ...[/page]";
						global.msg[6] = "[character,shopkeep,scared]* She's your s-[freeze][delay,150][continue]sister?[/page]";
						global.msg[7] = "[character,shopkeep,scared]* ...I've said too much.";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					else if (!instance_exists(obj_shop_text) && global.shopkeep_tree[0] >= 1)
					{
						global.shopkeep_tree[0] = 2;
						global.msg[0] = "[character,shopkeep,normal]* Wh-[freeze][delay,150][continue]why do I think your family\n  is a secret cabal that rules\n  over Middlewater?[freeze][delay,333][continue]\n* Isn't it obvious?[/page]";
						global.msg[1] = "[character,shopkeep,summin]* Using the unmatched power of\n  my M-[freeze][delay,150][continue]Monster Raydar Mark III I\n  was able to find a spike of\n  monster activity a few weeks\n  back![/page]";
						global.msg[2] = "[character,shopkeep,nervous]* The other t-[freeze][delay,150][continue]two marks exploded\n  once they actually had d-[freeze][delay,150][continue]data\n  to collect.[/page]";
						global.msg[3] = "[character,shopkeep,confident]* And wh-[freeze][delay,150][continue]where do you think the\n  spike was?[freeze][delay,333][continue] None other than\n  you and your sister's bakery!!![/page]";
						global.msg[4] = "[character,shopkeep,summin]* In fact,[freeze][delay,333][continue] there are even traces\n  of m-monster activity in this\n  very theater.[/page]";
						global.msg[5] = "[character,shopkeep,confident]* IN FACT,[freeze][delay,333][continue] there are even\n  t-[freeze][delay,150][continue]traces right...[/page]";
						global.msg[6] = "[character,shopkeep,crafty]* Right in front of...[/page]";
						global.msg[7] = "[character,shopkeep,scared]* ...[/page]";
						global.msg[8] = "[character,shopkeep,nervous]* I g-[freeze][delay,333][continue]guess it must be\n  malfunctioning...";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					curr_menu = ShopMenu.EXIT;
					break;
				case 1:
					if (instance_exists(obj_shop_text))
						instance_destroy(obj_shop_text);
					if (!instance_exists(obj_shop_text) && global.shopkeep_tree[1] == 0)
					{
						global.msg[0] = "[character,shopkeep,summin]* I'm Wedge Fiddleton,[freeze][delay,333][continue] the first\n  m-[freeze][delay,150][continue]man to uncover the true\n  mysteries of our world![/page]";
						global.msg[1] = "[character,shopkeep,summin]* Monsters,[freeze][delay,333][continue] m-[freeze][delay,150][continue]magic,[freeze][delay,333][continue] It's all real![freeze][delay,333][continue]\n* And it's all on that accursed\n  mountain!![/page]";
						global.msg[2] = "[character,shopkeep,nervous]* D-[freeze][delay,150][continue]don't loiter here too long.[freeze][delay,333][continue]\n* I figure it's only a m-[freeze][delay,150][continue]matter\n  of time before they find me.[/page]";
						global.msg[3] = "[character,shopkeep,intimidated]* I know all of their d-[freeze][delay,150][continue]dirty\n  little secrets.[freeze][delay,333][continue]\n* They'll whisk me away into\n  some secret underground facility\n  where I'd n-[freeze][delay,150][continue]never be able to\n  speak up.[/page]";
						global.msg[4] = "[character,shopkeep,crafty]* B-[freeze][delay,150][continue]but then I'd escape.[freeze][delay,333][continue]\n* I'd use a spoon to make a\n  t-[freeze][delay,150][continue]tunnel back to civilization![freeze][delay,333][continue]\n* Then I'd come back to\n  M-[freeze][delay,150][continue]Middlewater and tell everyone\n  the truth!![/page]";
						global.msg[5] = "[character,shopkeep,excited]* Then everyone would l-[freeze][delay,150][continue]love me\n  and those four pit punks would\n  stop making fun of me!![/page]";
						global.msg[6] = "[character,shopkeep,excited]* [wedgeshake]I'D GET THE KEY TO THE CITY\n  AND MY...[/page]";
						global.msg[7] = "[character,shopkeep,excited]* [wedgestop]........[/page]";
						global.msg[8] = "[character,shopkeep,sadsmile]* A-[freeze][delay,150][continue]Ahem...[/page]";
						global.msg[9] = "[character,shopkeep,sadsmile]* S-[freeze][delay,150][continue]so did that answer your\n  question?";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					else if (!instance_exists(obj_shop_text) && global.shopkeep_tree[1] >= 1)
					{
						global.msg[0] = "[character,shopkeep,normal]* 'The h-[freeze][delay,150][continue]heavens part for a\n  Skycleaver?'[/page]";
						global.msg[1] = "[character,shopkeep,angry]* ...[/page]";
						global.msg[2] = "[character,shopkeep,angry]* ...I'm g-[freeze][delay,150][continue]gonna be completely\n  honest with you.[/page]";
						global.msg[3] = "[character,shopkeep,angry]* I have no idea what it means.[/page]";
						global.msg[4] = "[character,shopkeep,normal]* I know w-[freeze][delay,150][continue]what you're talking\n  about though.[freeze][delay,333][continue]\n* It's weirded me o-[freeze][delay,150][continue]out ever since\n  I first went up on E-[freeze][delay,150][continue]Ebott.[/page]";
						global.msg[5] = "[character,shopkeep,summin]* Of course,[freeze][delay,333][continue] that doesn't mean\n  I don't have a-[freeze][delay,150][continue]any theories![/page]";
						global.msg[6] = "[character,shopkeep,normal]* Th-[freeze][delay,150][continue]there's this mark that appears\n  all over m-[freeze][delay,150][continue]monster stuff.[freeze][delay,333][continue]\n* Have you ever been to the w-[freeze][delay,150][continue]war\n  memorial?[freeze][delay,333][continue]\n* It's that thing with triangles\n  and wings.[/page]";
						global.msg[7] = "[character,shopkeep,normal]* The way I s-[freeze][delay,150][continue]see it,[freeze][delay,333][continue] the wings\n  represent some kind of b-[freeze][delay,150][continue]bird\n  monster.[/page]";
						global.msg[8] = "[character,shopkeep,nervous]* Well,[freeze][delay,333][continue] my first thought was that\n  it might be an angel but th-[freeze][delay,150][continue]that\n  would mean the monsters have\n  some kind of religion.[/page]";
						global.msg[9] = "[character,shopkeep,crafty]* But what if...[/page]";
						global.msg[10] = "[character,shopkeep,crafty]* The line on that s-[freeze][delay,150][continue]symbol...[freeze][delay,333][continue]\n* An angel and a S-[freeze][delay,150][continue]Skycleaver...[/page]";
						global.msg[11] = "[character,shopkeep,scared]* ...[/page]";
						global.msg[12] = "[character,shopkeep,confident]* No further questions on this\n  matter!!![/page]";
						global.msg[13] = "[character,shopkeep,confident]* Genius cannot be interrupted!!!!!";
						global.shopkeep_tree[1] = 2;
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					curr_menu = ShopMenu.EXIT;
					break;
				case 2:
					if (instance_exists(obj_shop_text))
						instance_destroy(obj_shop_text);
					if (!instance_exists(obj_shop_text))
					{
						global.msg[0] = "[character,shopkeep,normal]* W-[freeze][delay,150][continue]Why am I selling all this\n  stuff?[/page]";
						global.msg[1] = "[character,shopkeep,normal]* Well,[freeze][delay,333][continue] my r-[freeze][delay,150][continue]research isn't gonna\n  fund itself.[freeze][delay,333][continue]\n* And t-[freeze][delay,150][continue]there's so much to do.[/page]";
						global.msg[2] = "[character,shopkeep,intimidated]* Do you know h-[freeze][delay,150][continue]how hard it is to\n  record all the monsters on\n  Ebott?[/page]";
						global.msg[3] = "[character,shopkeep,intimidated]* I've been up there thirty times\n  and I haven't even found one\n  yet!![/page]";
						global.msg[4] = "[character,shopkeep,summin]* M-[freeze][delay,150][continue]Maybe that's where other\n  people would give up,[freeze][delay,333][continue] but not\n  me![freeze][delay,333][continue] Not Fiddleton!![freeze][delay,333][continue]\n* I'm gonna raise a ton of\n  money and put it all into my\n  research![/page]";
						global.msg[5] = "[character,shopkeep,summin]* I'm a dedicated t-[freeze][delay,150][continue]truth seeker,[freeze][delay,333][continue]\n  and people don't appreciate\n  that anymore!![freeze][delay,333][continue]\n* Especially not the p-[freeze][delay,150][continue]principal.[/page]";
						global.msg[6] = "[character,shopkeep,summin]* Not coming to class this\n  semester has been very helpful\n  for my work,[freeze][delay,333][continue] but not r-[freeze][delay,150][continue]really\n  for my grades.[/page]";
						global.msg[7] = "[character,shopkeep,nervous]* Or my f-[freeze][delay,150][continue]friendships.[freeze][delay,333][continue]\n* Or[freeze][delay,333][continue]...[/page]";
						global.msg[8] = "[character,shopkeep,sad]* ...[/page]";
						global.msg[9] = "[character,shopkeep,sadsmile]* So go ahead and buy something,[freeze][delay,333][continue]\n  a-[freeze][delay,150][continue]alright?";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					curr_menu = ShopMenu.EXIT;
					break;
				case 3:
					if (instance_exists(obj_shop_text))
						instance_destroy(obj_shop_text);
					if (!instance_exists(obj_shop_text) && global.shopkeep_tree[3] == 0)
					{
						global.msg[0] = "[character,shopkeep,normal]* The m-[freeze][delay,150][continue]musical?[/page]";
						global.msg[1] = "* It's called 'Ice Station Nine'![freeze][delay,333][continue]\n* I'm sure you've heard of it\n  already.[/page]";
						global.msg[2] = "* ...[/page]";
						global.msg[3] = "[character,shopkeep,nervous]* N-[freeze][delay,150][continue]no?[/page]";
						global.msg[4] = "[character,shopkeep,summin]* Not even after its b-[freeze][delay,150][continue]big\n  nomination?[freeze][delay,333][continue]\n* 'Best Intermission'.[freeze][delay,333][continue]\n* You ever heard of it?[/page]";
						global.msg[5] = "[character,shopkeep,confident]* I-[freeze][delay,333][continue]It's about conspiracies![freeze][delay,333][continue]\n* A bunch of truth seekers![/page]";
						global.msg[6] = "[character,shopkeep,summin]* A couple,[freeze][delay,333][continue] m-[freeze][delay,150][continue]marooned in the\n  arctic,[freeze][delay,333][continue] find an outpost with\n  s-[freeze][delay,150][continue]scientists trying to find an\n  old fabled yeti.[/page]";
						global.msg[7] = "[character,shopkeep,summin]* A-[freeze][delay,150][continue]And in the second act they\n  all get attacked by it![/page]";
						global.msg[8] = "[character,shopkeep,nervous]* To be fair,[freeze][delay,333][continue] the time in the\n  middle's a bit b-[freeze][delay,150][continue]boring.[/page]";
						global.msg[9] = "[character,shopkeep,summin]* But people d-[freeze][delay,150][continue]don't understand,[freeze][delay,333][continue]\n  it's more of a commentary on\n  boredom itself!";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					else if (!instance_exists(obj_shop_text) && global.shopkeep_tree[3] == 1)
					{
						global.yeti_for_purchase = true;
						global.shopkeep_tree[3] = 0;
						global.msg[0] = "[character,shopkeep,normal]* Y-[freeze][delay,150][continue]you need to unlock the\n  door in the lobby?[/page]";
						global.msg[1] = "[character,shopkeep,summin]* You made a g-[freeze][delay,150][continue]great choice coming\n  to me first![freeze][delay,333][continue] I,[freeze][delay,333][continue] Wedge\n  Fiddleton,[freeze][delay,333][continue] have unparalleled\n  access to every door in this\n  theater!!![/page]";
						global.msg[2] = "[character,shopkeep,summin]* The janitors greatly\n  underestimated me by l-[freeze][delay,150][continue]leaving\n  their keys in my closet![/page]";
						global.msg[3] = "[character,shopkeep,excited]* YOU HEAR THAT,[freeze][delay,333][continue] WORLD!?[freeze][delay,333][continue]\n* SOMEONE FINALLY NEEDS ME!!!![/page]";
						global.msg[4] = "[character,shopkeep,excited]* ...[/page]";
						global.msg[5] = "[character,shopkeep,sadsmile]* Someone finally needs me...[/page]";
						global.msg[6] = "[character,shopkeep,normal]* I'll give you the k-[freeze][delay,150][continue]key for\n  150 coins.[/page]";
						global.msg[7] = "[character,shopkeep,sad]* Or a verbal apology from your\n  s-[freeze][delay,150][continue]sister.[freeze][delay,333][continue]\n* For all the bullying.[/page]";
						global.msg[8] = "[character,shopkeep,normal]* ...[/page]";
						global.msg[9] = "[character,shopkeep,normal]* Does a verbal apology f-[freeze][delay,150][continue]from\n  you work?[freeze][delay,333][continue]\n* Since she's your sister?[/page]";
						global.msg[10] = "[character,shopkeep,normal]* ...[/page]";
						global.msg[11] = "[character,shopkeep,normal]* Yeah close enough.[/page]";
						global.msg[12] = "[character,shopkeep,sadsmile]* ...Thank you.[freeze][delay,333][continue]\n* I really n-[freeze][delay,150][continue]needed that.[/page]";
						global.msg[13] = "[character,none,-1][delay,1][item_sound]* (A new item is available in\n  the shop!)";
						var text = instance_create_depth(x, y, -1000, obj_shop_text);
						text.can_skip = true;
					}
					curr_menu = ShopMenu.EXIT;
					break;
				case 4:
					if (instance_exists(obj_shop_text))
						instance_destroy(obj_shop_text);
					curr_menu = ShopMenu.MAIN;
					option = 0;
					break;
			}
			keyboard_clear(ord("Z"));
		}
		if (cancel)
		{
			audio_play_sound(snd_squeak, 0, false);
			if (instance_exists(obj_shop_text))
				instance_destroy(obj_shop_text);
			option = 0;
			curr_menu = ShopMenu.MAIN;
		}
		break;
	case ShopMenu.EXIT:
		break;
}
