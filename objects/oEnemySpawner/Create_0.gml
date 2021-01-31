/// @description spawn enemies away from player

if (!instance_exists(oPlayer)) exit;

var _spawnx, _spawny;
var _enemies_to_spawn_max = 4;
var _enemies_to_spawn = inventory_count();
_enemies_to_spawn = min(_enemies_to_spawn, _enemies_to_spawn_max);

while (_enemies_to_spawn > 0)
{
	do
	{
		_spawnx = irandom_range(UNIT, room_width - UNIT);
		_spawny = irandom_range(UNIT, room_height - UNIT);

		_spawnx = clamp(_spawnx, UNIT, room_width - UNIT);
		_spawny = clamp(_spawny, UNIT, room_height - UNIT);
	}
	until (!solid_at_point(_spawnx, _spawny) && 
			point_distance(_spawnx, _spawny, oPlayer.x, oPlayer.y) > UNIT * 6)
	
	instance_create_layer(_spawnx, _spawny, "Player", oCameraEnemy);
	_enemies_to_spawn -= 1;
}

