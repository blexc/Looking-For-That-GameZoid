function transition_start(_room_target)
{
	with (oTransition)
	{
		mode = TRANS_MODE.GOTO;
		target = _room_target;
	}
}