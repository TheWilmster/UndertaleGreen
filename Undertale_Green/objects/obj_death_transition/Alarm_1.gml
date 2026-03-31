audio_play_sound(snd_break2, 80, false);
instance_create_depth(obj_heart_death.x - 2, obj_heart_death.y, depth - 1, obj_heartshard);
instance_create_depth(obj_heart_death.x, obj_heart_death.y + 3, depth - 1, obj_heartshard);
instance_create_depth(obj_heart_death.x + 2, obj_heart_death.y + 6, depth - 1, obj_heartshard);
instance_create_depth(obj_heart_death.x + 8, obj_heart_death.y, depth - 1, obj_heartshard);
instance_create_depth(obj_heart_death.x + 10, obj_heart_death.y + 3, depth - 1, obj_heartshard);
instance_create_depth(obj_heart_death.x + 12, obj_heart_death.y + 6, depth - 1, obj_heartshard);
instance_destroy(obj_heart_death);
alarm[2] = 50;
