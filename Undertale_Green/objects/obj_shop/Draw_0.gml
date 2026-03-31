draw_sprite_ext(spr_shop_bg, 0, 0, 0, 1, 1, 0, c_white, 1);
draw_sprite_ext(shopkeepface, 0, shop_x, 0, 1, 1, 0, c_white, 1);
if (curr_menu == ShopMenu.MAIN)
{
	if (item_desc_y > 0)
		item_desc_y /= 1.2;
	draw_sprite_ext(spr_shop_itemdesc, 0, 0, item_desc_y, 1, 1, 0, c_white, 1);
	if (option < 3)
	{
		if (sub_menu == 0)
			draw_shop_text(224, 57 + item_desc_y, item_index[option].shop_desc, fnt_determination);
		else
			draw_shop_text(224, 57 + item_desc_y, item_index[selected_item].shop_desc, fnt_determination);
	}
}
draw_sprite_ext(spr_shop, shop_index, 0, 0, 1, 1, 0, c_white, 1);
switch (curr_menu)
{
	case ShopMenu.MAIN:
		shop_index = 0;
		draw_shop_text(239, 134, "Buy", fnt_determination);
		draw_shop_text(239, 154, "Talk", fnt_determination);
		draw_shop_text(239, 174, "Exit", fnt_determination);
		draw_shop_text(229, 214, string(global.money) + "C", fnt_determination);
		draw_shop_text(279, 214, string(array_length(global.inventory)) + "/8", fnt_determination);
		draw_sprite_ext(spr_heart_choice, 0, 225, 134 + (option * 20), 0.5, 0.5, 0, c_white, 1);
		draw_shop_text(229, 214, string(global.money) + "C", fnt_determination);
		draw_shop_text(279, 214, string(array_length(global.inventory)) + "/8", fnt_determination);
		break;
	case ShopMenu.BUY:
		shop_index = 1;
		if (global.yeti_for_purchase == true)
		{
			draw_set_color(c_yellow);
			draw_shop_text(29, 134, string(prices[0]) + "C-" + string(item_index[0].label) + " (NEW)", fnt_determination);
			draw_set_color(c_white);
		}
		else
		{
			draw_shop_text(29, 134, string(prices[0]) + "C-" + string(item_index[0].label), fnt_determination);
		}
		draw_shop_text(29, 154, string(prices[1]) + "C-" + string(item_index[1].label), fnt_determination);
		draw_shop_text(29, 174, string(prices[2]) + "C-" + "Chocolate Muffin", fnt_determination);
		draw_shop_text(29, 214, "Exit", fnt_determination);
		draw_shop_text(229, 214, string(global.money) + "C", fnt_determination);
		draw_shop_text(279, 214, string(array_length(global.inventory)) + "/8", fnt_determination);
		if (sub_menu == 0)
		{
			if (option < 3)
				draw_sprite_ext(spr_heart_choice, 0, 15, 134 + (option * 20), 0.5, 0.5, 0, c_white, 1);
			else
				draw_sprite_ext(spr_heart_choice, 0, 15, 214, 0.5, 0.5, 0, c_white, 1);
		}
		else
		{
			draw_shop_text(229, 134, "Buy it for", fnt_determination);
			draw_shop_text(229, 149, string(prices[selected_item]) + "C?", fnt_determination);
			draw_shop_text(239, 174, "Yes", fnt_determination);
			draw_shop_text(239, 189, "No", fnt_determination);
			draw_sprite_ext(spr_heart_choice, 0, 225, 174 + (option * 15), 0.5, 0.5, 0, c_white, 1);
		}
		break;
	case ShopMenu.TALK:
		shop_index = 1;
		if (global.shopkeep_tree[0] == 0)
		{
			draw_shop_text(29, 134, "Where's Chai?", fnt_determination);
		}
		else if (global.shopkeep_tree[0] == 1)
		{
			draw_set_color(c_yellow);
			draw_shop_text(29, 134, "Ebottside Bakery (NEW)", fnt_determination);
			draw_set_color(c_white);
		}
		else if (global.shopkeep_tree[0] == 2)
		{
			draw_shop_text(29, 134, "Ebottside Bakery", fnt_determination);
		}
		if (global.shopkeep_tree[1] == 0)
		{
			draw_shop_text(29, 154, "Who are you?", fnt_determination);
		}
		else if (global.shopkeep_tree[1] == 1)
		{
			draw_set_color(c_yellow);
			draw_shop_text(29, 154, "Skycleaver (NEW)", fnt_determination);
			draw_set_color(c_white);
		}
		else if (global.shopkeep_tree[1] == 2)
		{
			draw_shop_text(29, 154, "Skycleaver", fnt_determination);
		}
		draw_shop_text(29, 174, "Shop", fnt_determination);
		if (global.shopkeep_tree[3] == 0)
		{
			draw_shop_text(29, 194, "The Musical", fnt_determination);
		}
		else if (global.shopkeep_tree[3] == 1)
		{
			draw_set_color(c_yellow);
			draw_shop_text(29, 194, "Yeti Helmet (NEW)", fnt_determination);
			draw_set_color(c_white);
		}
		draw_shop_text(29, 214, "Exit", fnt_determination);
		draw_sprite_ext(spr_heart_choice, 0, 15, 134 + (option * 20), 0.5, 0.5, 0, c_white, 1);
		draw_shop_text(229, 214, string(global.money) + "C", fnt_determination);
		draw_shop_text(279, 214, string(array_length(global.inventory)) + "/8", fnt_determination);
		break;
	case ShopMenu.EXIT:
		shop_index = 2;
		break;
}
