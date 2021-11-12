params ["_zone"];
private _randompos = _zone call BIS_fnc_randomPosTrigger;
private _nearlist = _randompos nearEntities ["Man", 100];
if (count _nearlist < 1) then {
	(_randompos);
} else {
	_randomPos = [];
	"_zone" call arkov_fnc_randomPositionsMaking;
};