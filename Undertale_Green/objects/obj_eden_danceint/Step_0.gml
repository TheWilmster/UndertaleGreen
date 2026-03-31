if (!instance_exists(obj_textboxNEW) && progress == 1)
{
	progress = 2;
	instance_create_depth(obj_player.x, obj_player.y, obj_player.depth, obj_olivedance);
	obj_player.visible = false;
}
