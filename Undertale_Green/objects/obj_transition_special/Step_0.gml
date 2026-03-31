image_xscale = room_width;
image_yscale = room_height;
if (room == target_rm && faded_in == 0)
{
	var x_center = obj_player.sprite_width / 2;
	switch (target_marker)
	{
		case "A":
			obj_player.x = obj_markerA.x - x_center;
			obj_player.y = obj_markerA.y - 2;
			break;
		case "B":
			obj_player.x = obj_markerB.x - x_center;
			obj_player.y = obj_markerB.y - 2;
			break;
		case "C":
			obj_player.x = obj_markerC.x - x_center;
			obj_player.y = obj_markerC.y - 2;
			break;
		case "D":
			obj_player.x = obj_markerD.x - x_center;
			obj_player.y = obj_markerD.y - 2;
			break;
		case "E":
			obj_player.x = obj_markerE.x - x_center;
			obj_player.y = obj_markerE.y - 2;
			break;
		case "F":
			obj_player.x = obj_markerF.x - x_center;
			obj_player.y = obj_markerF.y - 2;
			break;
	}
	obj_player.curr_state = PlayerState.NORMAL;
	instance_destroy();
	faded_in = 1;
}
