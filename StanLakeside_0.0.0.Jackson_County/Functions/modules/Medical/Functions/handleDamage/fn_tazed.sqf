/*
	File: fn_tazed.sqf


	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
private["_sleeptime"];
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith { player allowDamage true; medical_istazed = false; };
_sleeptime = 25;
if(_shooter isKindOf "Man" && !medical_deadPlayer) then {
	if(!medical_istazed) then {
		medical_istazed = true;
		[] spawn KK_fnc_forceRagdoll;
		disableUserInput true;
		player setVariable ["tf_voiceVolume", 0, true];
		player playmovenow "DeadState";
		_sleeptime spawn {
			_sleeptime = _this;
			uisleep _sleeptime;
			sleep 1;
			if(!(player getVariable ["escorting", false])) then { detach player; };
			sleep 1;
			medical_istazed = false;
			disableUserInput false;
			[player,""] remoteExecCall ["Client_fnc_animSync"];
			player setVariable ["tf_voiceVolume", 1, true];
		};
	};
} else {
	_unit allowDamage true;
	medical_istazed = false;
};
