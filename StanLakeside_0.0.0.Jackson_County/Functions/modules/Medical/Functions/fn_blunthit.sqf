/*
blunt melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; RPF_istazed = false;};
if(RPF_deadPlayer) exitWith {};

if(_shooter isKindOf "Man" && !RPF_deadPlayer) then {
	["Remove",0.05] call ClientModules_Medical_fnc_doHealth;
	if(!RPF_istazed) then {
		[] spawn KK_fnc_forceRagdoll;
		RPF_istazed = true;
		disableUserInput true;
		player setVariable ["tf_voiceVolume", 0, true];
		[] spawn {
			uiSleep 3;
			[player,"amovppnemstpsraswrfldnon"] remoteExecCall ["Client_fnc_animSync"];
			detach player;
			RPF_istazed = false;
			player allowDamage true;
			disableUserInput false;
			player setVariable ["tf_voiceVolume", 1, true];
		};
	};
} else {
	_unit allowDamage true;
	RPF_istazed = false;
};