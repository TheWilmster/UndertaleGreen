switch (box_mode)
{
	case BattleBox.TEXT:
		battle_box(576, 140);
		break;
	case BattleBox.ATTACK:
		break;
	case BattleBox.METER:
		battle_box(400, 140);
		break;
}
if (!instance_exists(obj_border))
	instance_create_depth(x, y, depth - 1, obj_border);
