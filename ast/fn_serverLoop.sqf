sleep 60;
["serverOn"] call DiscordEmbedBuilder_fnc_buildCfg;

while {true} do {
	sleep 450;
	_countAllPlayer = [count allPlayers];
	_nowtime = dayTime;
	_hours = floor _nowtime;
	if ((_hours > 6) && (_hours < 18)) then {
		setTimeMultiplier 4;
	} else {
		setTimeMultiplier 12;
	};
	if (count allPlayers != 0) then {
		["Player",_countAllPlayer] call DiscordEmbedBuilder_fnc_buildCfg;
	};
	sleep 450;
	{ deleteVehicle _x } forEach allDead;
};
