params ["_player"];
_id = owner _player;
_uid = getPlayerUID _player;
AST_chest = ["read", [_uid, "chest", ""]] call inidbi;
_id publicVariableClient "AST_chest";
