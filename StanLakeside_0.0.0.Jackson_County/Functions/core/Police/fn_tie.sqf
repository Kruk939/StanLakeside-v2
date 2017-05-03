params ["_ct"];

player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
[player, "tie"] remoteExecCall ["Client_fnc_playSound", 0];
sleep 0.833;

player removeItem RPF_Tie;

_ct setVariable ["tied", true, true];

[] remoteExec ["Client_fnc_tieTarget", _ct];
