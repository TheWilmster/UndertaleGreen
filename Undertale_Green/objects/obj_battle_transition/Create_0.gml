global.battle_heal = 0;
global.stored_items = [];
for (var i = 0; i < array_length(global.inventory); i += 1)
	array_push(global.stored_items, global.inventory[i]);
image_xscale = room_width;
image_yscale = room_height;
depth = -9998;
instance_create_depth(obj_player.x + ((obj_player.sprite_width / 2) - 4.5), obj_player.y + ((obj_player.sprite_height / 2) - 4.5), depth - 1, obj_heart_transition, 
{
	image_xscale: 0.5,
	image_yscale: 0.5
});
