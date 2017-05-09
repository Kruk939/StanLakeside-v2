/*
blunt melee hit
*/
private["_curWep","_curMags","_attach"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith { player allowDamage true; medical_istazed = false; };
if(medical_deadPlayer) exitWith {};

if(_shooter isKindOf "Man" && !medical_deadPlayer) then {
	["Remove",0.05] call ClientModules_Medical_fnc_doHealth;
	if(!medical_istazed) then {
		[] spawn KK_fnc_forceRagdoll;
		medical_istazed = true;
		disableUserInput true;
		player setVariable ["tf_voiceVolume", 0, true];
		[] spawn {
			uiSleep 3;
			[player,"amovppnemstpsraswrfldnon"] remoteExecCall ["Client_fnc_animSync"];
			detach player;
			medical_istazed = false;
			player allowDamage true;
			disableUserInput false;
			player setVariable ["tf_voiceVolume", 1, true];
		};
	};
} else {
	_unit allowDamage true;
	medical_istazed = false;
};
