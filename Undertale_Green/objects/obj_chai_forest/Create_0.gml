depth = -bbox_bottom;
image_blend = c_gray;
image_index = 1;
if (global.forest_cutscene != 2)
{
	instance_destroy(self);
}
else
{
	image_speed = 0;
	alarm[0] = 40;
	olivegetup = false;
	chaiwalktobench = false;
}
