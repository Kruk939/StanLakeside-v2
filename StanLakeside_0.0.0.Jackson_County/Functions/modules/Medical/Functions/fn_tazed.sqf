/*
	File: fn_tazed.sqf
	
	
	Description:
	Starts the tazed animation and broadcasts out what it needs to.
*/
params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]];
if(isNull _unit OR isNull _shooter) exitWith {player allowDamage true; RPF_istazed = false;};
_sleeptime = 25;

/*
if(client_crazy > 0) then {
	_sleeptime = _sleeptime * 0.5;
};
*/

if(_shooter isKindOf "Man" && !medical_deadPlayer) then {
	if(!RPF_istazed) then
	{
		RPF_istazed = true;
		[] spawn KK_fnc_forceRagdoll;

		disableUserInput true;
		player setVariable ["tf_voiceVolume", 0, true];

		player playmovenow "DeadState";
		_sleeptime spawn {
			_sleeptime = _this;
			uisleep _sleeptime;
			sleep 1;
			if(!(player getVariable ["escorting", false])) then {
				detach player;
			};
			sleep 1;
			RPF_istazed = false;
			disableUserInput false;
			//[player,""] remoteExecCall ["Client_fnc_animSync"];
			player setVariable ["tf_voiceVolume", 1, true];
		};
	};
} else {
	_unit allowDamage true;
	RPF_istazed = false;
};