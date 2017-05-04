/*
	fn_onPlayerKilled.sqf
*/

disableSerialization;
private["_playerkill","_deathCamera","_kcCamera","_fuck","_you","_killer","_killweapon","_killdistance"];
if(medical_deadPlayer) exitwith {};
//if (client_godmode) exitwith { false };
medical_deadPlayer = true;
[] spawn KK_fnc_forceRagdoll;
if(vehicle player == player) then {
	player playmove "deadstate";
};

//im_dead = true; //? czo to?
params [["_unit", objNull, [objNull]], ["_killer", objNull, [objNull]], ["_length", 0, [0]], ["_headshot", 0, [0]]];
player setVariable ["tf_voiceVolume", 0, true];
_length = 20 - _length;
_length = round(_length);
if(_length > 11) then { _length = 15; };
if(_length < 5) then { _length = 8; };

_unit setVariable["medical_deadPlayer",true,true];

_playerkill = false;
_killdistance = round ((_unit distance _killer) * 10) / 10;
_killweapon = (configfile >> "CfgWeapons" >> currentWeapon _killer >> "displayName") call BIS_fnc_getCfgData;
_fuck = name _killer;
_you = name _unit;


if(_fuck != _you) then {
	if(_fuck find "Error: " > -1) then {
		//[getpos player, "News", "Vehicle Accident"] remoteexec ["server_fnc_giveTask",2];

		[format["%1 jest ciężko ranny!", _you], false] spawn domsg;
		//[_killer, player, "vehicleKill"] spawn ClientModules_Medical_fnc_createEvidence;
	} else {
		[getpos player, "News", "Shooting"] remoteexec ["server_fnc_giveTask",2];
		if(_headshot == 1) then { [format["%1 ustrzelił głowę %2 z dystansu %3 używając: %4.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  } else { [format["%1 ułożył do snu %2 z dystansu %3 używając: %4.", _fuck, _you, _killdistance, _killweapon], false] spawn domsg;  };
		_kcCamera  = "CAMERA" camCreate (getPosATL _killer);
		showCinemaBorder false;
		_kcCamera cameraEffect ["EXTERNAL", "BACK"];
		_kcCamera camSetTarget _killer;
		_kcCamera camSetRelPos [0,5,1];
		_kcCamera camSetFOV .85;
		_kcCamera camSetFocus [50,1];
		_kcCamera camCommit 0;
		_playerkill = true;
		//[_killer, player, "killAtempt"] spawn ClientModules_Medical_fnc_createEvidence;
	};
	//[player,_killer,1,format ["%1 zabił %2 z dystansu %3 używając %4",_fuck, name player, _killdistance, _killweapon],_killweapon, _killdistance] remoteExec ["server_fnc_deathLog", 2];
} else {
	//[getpos player, "News", "Unknown Death"] remoteexec ["server_fnc_giveTask",2];
	[format["%1 jest nieprzytomny!", _fuck], false] spawn domsg;
	//[player,objNull,2,format ["%1 zginął",name player],"",""] remoteExec ["server_fnc_deathLog", 2];
};

if(_playerkill) then {
	sleep 7;
	_kcCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy _kcCamera;
};


_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder FALSE;
_deathCamera cameraEffect ["Internal","Back"];

_deathCamera camSetTarget _unit;
_deathCamera camSetRelPos [0,22,22];
_deathCamera camSetFOV .5;
_deathCamera camSetFocus [50,0];
_deathCamera camCommit 0;



createdialog "medical_deathScreen";
(findDisplay 100002) displaySetEventHandler ["KeyDown","if((_this select 1) == (_this select 1)) then {true}"];


[_unit, _length] spawn
{
	private["_RespawnBtn","_Timer"];
	params["_unit","_lenght"]
	disableSerialization;
	_RespawnBtn = ((findDisplay 100002) displayCtrl 7302);
	_Timer = ((findDisplay 100002) displayCtrl 7301);
	maxTime = time + (_length * 60);
	_RespawnBtn ctrlEnable false;
	waitUntil {_Timer ctrlSetText format["Respawn: %1",[(maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]; round(maxTime - time) <= 0 OR isNull _unit};
	_respawn = player getVariable "respawn";
	if (_respawn > 0) then
	{
		_RespawnBtn ctrlEnable true;
		_Timer ctrlSetText "Respawn";
	};
	if (_respawn == 0) then
	{
		_Timer ctrlSetText "Skończyły Ci się życia! Jeżeli w ciągu 15 minut nie pomoże Ci służba medyczna zostaniesz wyrzucony z serwera!";
		//[] spawn ClientModules_Medical_fnc_respawnTimer;
	};
	if(!medical_deadPlayer) exitwith { closedialog 0; };
};

[_unit] spawn
{
	params ["_unit"];
	while { medical_deadPlayer } do { _deathCamera camSetTarget _unit; _deathCamera camSetRelPos [0,22,22]; _deathCamera camCommit 0; uisleep 0.05; };
	sleep 1;
	player setVariable["dead",nil,true];
	_deathCamera cameraEffect ["TERMINATE","BACK"];
	camDestroy _deathCamera;
};

player setdamage 0;

[] spawn {
	while{true} do {
		sleep 1;
		if( vehicle player == player && animationstate player != "deadstate" ) then {  player playmovenow "deadstate"; };
		player setOxygenRemaining 1;
		if(!medical_deadPlayer) exitwith {};
	};
};
