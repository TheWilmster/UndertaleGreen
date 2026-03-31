image_speed = 0;
depth = -9999999999999;
reset = false;
credits_screen = -1;
fade_txt = 1;
fade_out = false;
alarm[0] = 200;
x_offset = 0;
y_offset = 0;
offset = 60;
if (global.act0_save == 1)
{
	if (global.eden_drivewaycut == true)
		global.transfer_act0[0] = 1;
	else
		global.transfer_act0[0] = 2;
}
if (global.act0_save == 2)
{
	if (global.eden_drivewaycut == true)
		global.transfer_act0[1] = 1;
	else
		global.transfer_act0[1] = 2;
}
if (global.act0_save == 3)
{
	if (global.eden_drivewaycut == true)
		global.transfer_act0[2] = 1;
	else
		global.transfer_act0[2] = 2;
}
data_transfer_save();
