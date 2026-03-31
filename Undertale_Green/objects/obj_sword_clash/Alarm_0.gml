randomize();
alarmval = random_range(4, 8);
instance_create_depth(x, y, -9999, obj_spark);
alarm_set(0, alarmval);
