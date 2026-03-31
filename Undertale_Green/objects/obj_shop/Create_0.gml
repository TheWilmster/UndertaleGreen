shopkeepface = spr_shopkeeper;
global.save_photo = 4;
global.shopkeep_cutscene = false;
shop_x = 0;
shake = false;
siner = 0;
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
curr_menu = ShopMenu.MAIN;
sub_menu = 0;
selected_item = -1;
shop_index = 0;
item_outcome = -1;
item_desc_y = 81;
option = 0;
if (!audio_is_playing(mus_shop))
	audio_play_sound(mus_shop, 1, true);
if (audio_is_playing(mus_pitorch_lp))
	audio_sound_gain(mus_pitorch_lp, 0, 0);
if (audio_is_playing(mus_school_night))
	audio_sound_gain(mus_school_night, 0, 0);
