wakeup = false;
startshake = false;
shake = false;
x = obj_player.x + 6;
y = obj_player.y + 1;
def_x = x;
input_test = true;
image_blend = c_gray;
if (global.forest_cutscene != 2)
	instance_destroy(self);
image_speed = 0;
image_index = 2;
