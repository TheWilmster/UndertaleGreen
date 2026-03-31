depth = -bbox_bottom;
if (instance_exists(obj_chai_forest_bench))
{
	if (global.bench_cut == 1 || global.bench_cut == 2 || obj_chai_forest_bench.endgame_cutscene == true)
		depth = 10;
	else
		depth = -bbox_bottom;
}
