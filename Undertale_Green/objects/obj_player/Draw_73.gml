if (global.school_time_sequence != 3)
{
	if (place_meeting(x, y, obj_bsscreen) || place_meeting(x, y, obj_bsscreen2))
	{
		gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
		gpu_set_alphatestenable(true);
		if (y > 275 && y <= 285)
		{
			gpu_set_fog(true, merge_color(c_black, c_white, 0.6), 0, 1);
			draw_self();
			gpu_set_fog(false, c_black, 0, 1);
		}
		if (y > 285 && y <= 300)
		{
			gpu_set_fog(true, merge_color(c_black, c_white, 0.4), 0, 1);
			draw_self();
			gpu_set_fog(false, c_black, 0, 1);
		}
		if (y > 300)
		{
			gpu_set_fog(true, c_black, 0, 1);
			draw_self();
			gpu_set_fog(false, c_black, 0, 1);
		}
		gpu_set_alphatestenable(false);
		gpu_set_blendmode(bm_normal);
	}
}
else if (place_meeting(x, y, obj_bsscreen) || place_meeting(x, y, obj_bsscreen2))
{
	gpu_set_blendmode_ext(bm_dest_alpha, bm_inv_dest_alpha);
	gpu_set_alphatestenable(true);
	if (y > 275 && y <= 285)
	{
		gpu_set_fog(true, merge_color(c_black, #1E312F, 0.6), 0, 1);
		draw_self();
		gpu_set_fog(false, c_black, 0, 1);
	}
	if (y > 285 && y <= 300)
	{
		gpu_set_fog(true, merge_color(c_black, #1E312F, 0.4), 0, 1);
		draw_self();
		gpu_set_fog(false, c_black, 0, 1);
	}
	if (y > 300)
	{
		gpu_set_fog(true, c_black, 0, 1);
		draw_self();
		gpu_set_fog(false, c_black, 0, 1);
	}
	gpu_set_alphatestenable(false);
	gpu_set_blendmode(bm_normal);
}
