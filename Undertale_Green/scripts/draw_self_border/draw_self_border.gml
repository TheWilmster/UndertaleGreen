function draw_sprite_clip(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
	var sw = sprite_get_width(arg0);
	var sh = sprite_get_height(arg0);
	var sx = sprite_get_xoffset(arg0);
	var sy = sprite_get_yoffset(arg0);
	var cx2 = arg4 + arg6;
	var cy2 = arg5 + arg7;
	var bx1 = arg2 - sprite_get_xoffset(arg0);
	var by1 = arg3 - sprite_get_yoffset(arg0);
	var bx2 = bx1 + sprite_get_width(arg0);
	var by2 = by1 + sprite_get_height(arg0);
	switch (rectangle_in_rectangle(bx1, by1, bx2, by2, arg4, arg5, cx2, cy2))
	{
		case 1:
			draw_sprite(arg0, arg1, arg2, arg3);
			return true;
		case 2:
			var lx1 = max(0, arg4 - bx1);
			var ly1 = max(0, arg5 - by1);
			var lx2 = sw + min(0, cx2 - bx2);
			var ly2 = sh + min(0, cy2 - by2);
			draw_sprite_part(arg0, arg1, lx1, ly1, lx2 - lx1, ly2 - ly1, (arg2 + lx1) - sx, (arg3 + ly1) - sy);
			return true;
	}
	return false;
}
