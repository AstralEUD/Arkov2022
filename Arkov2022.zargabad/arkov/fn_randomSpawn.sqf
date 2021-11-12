// Author: Testify
// Usage: random spawn at [variable] zone 
// NEEDED variables:
// 1. param - can be Object, String, Location, Array 
// 2. unit
params ["_zone", "_player"];
_rdPos = _zone call arkov_fnc_randomPositionsMaking;
//waitUntil {isNil _randompos};
_rdBuilding = nearestBuilding _rdPos;
_rdBpos = selectRandom (_rdBuilding buildingPos -1);
_player setPos _rdBpos;
("completed");
