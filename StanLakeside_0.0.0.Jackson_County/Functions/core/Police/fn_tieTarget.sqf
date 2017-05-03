for "_i" from 0 to 1 step 0 do {
	if (!(player getVariable "tied")) exitWith {};
	if(!alive player) exitWith {player setVariable ["tied",false,true];};
	if (isNull objectParent player) then {player playMove "AmovPercMstpSnonWnonDnon_Ease";};
	if (!(isNull objectParent player) && ((driver vehicle player) == player)) then {player action ["eject", vehicle player];};
};
