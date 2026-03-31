target_xscale = global.border_size[0];
target_yscale = global.border_size[1];
if (curr_xscale > (target_xscale + 30))
	curr_xscale -= 30;
else if (curr_xscale < (target_xscale - 30))
	curr_xscale += 30;
else
	curr_xscale = target_xscale;
x = (room_width / 2) - (curr_xscale / 2);
y = ((room_height / 2) + 80) - (curr_yscale / 2);
image_xscale = curr_xscale / 15;
