/*────────────────────────────────────────────────────────────────────┐
│   Author: lululala22                                                │
│                                                                     │
│   Description: For read money from DB                               │
│   Call Example:                                                     │
│   [player] remoteExecCall ["AST_fnc_fetch_money", 2, false];        │
│        Use 'AST_kill_score' variable                                │
└─────────────────────────────────────────────────────────────────────*/

params ["_player"];
_id = owner _player;
_uid = getPlayerUID _player;
AST_kill_score = ["read", [_uid, "kill_score", 15]] call inidbi;
_id publicVariableClient "AST_kill_score";
