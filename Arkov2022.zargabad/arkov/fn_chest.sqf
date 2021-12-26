// CHEST OPEN script
// REQUESTED parameters:
//         FREE SPACE for CREATING CRATE (Now, HELIPAD_CRATE)

_pos = getPosATL HELIPAD_CRATE;
_obj = createVehicle ["B_supplyCrate_F",_pos];
hideObjectGlobal _obj;
_obj setPosATL (getPosATL player);
clearBackpackCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearWeaponCargoGlobal _obj;
[player] remoteExec ["arkov_fnc_chestInfo",2];
_obj addBackpackCargoGlobal AST_chest;
_obj addItemCargoGlobal AST_chest;
_obj addMagazineCargoGlobal AST_chest;
_obj addWeaponCargoGlobal AST_chest;
player addaction ["Open " ,{
	_box = _this select 3 select 0;
	player removeaction (_this select 2); 
	player action ["GEAR",_box];
	_box addEventHandler ["ContainerClosed", {
		params ["_container", "_unit"];
		_backpack = backpackCargo _container;
		_item = itemCargo _container;
		_magazine = magazineCargo _container;
		_weapon = weaponCargo _container;
		_backpack append _item;
		_backpack append _magazine;
		_backpack append _weapon;
		[player, "chest", _backpack] remoteExec ["ast_fnc_db_save",2];
		_container removeEventHandler ["ContainerClosed", _thiseventHandler];
		deleteVehicle _container;
	}];
	},[_obj], 0, true, false, "", ""];

