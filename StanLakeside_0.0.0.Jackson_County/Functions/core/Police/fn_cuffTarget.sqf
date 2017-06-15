/*
Author: Kerkkoh
First Edit: 28.11.2015
*/
for "_i" from 0 to 1 step 0 do {
	if (!(player getVariable "cuffed")) exitWith {};
	if(!alive player) exitWith {player setVariable ["cuffed",false,true];};
	if (isNull objectParent player) then {player playMove "AmovPercMstpSnonWnonDnon_Ease";};
	if (!(isNull objectParent player) && ((driver vehicle player) isEqualTo player)) then {player action ["eject", vehicle player];};
};
