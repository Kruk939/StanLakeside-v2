params ["_ct"];

_ct setVariable ["tied", false, true];

[player, "tie"] remoteExecCall ["Client_fnc_playSound", 0];
remoteExecCall ["Client_fnc_unTieTarget", _ct];

player addItem RPF_Tie;
