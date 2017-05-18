/*
		Module: Medical
		Author: Kajetan "Kruk" Mruk
		Date: 04.05.2017
		Params:
			0 - String - current location
			1 - Object - object that hit player
		Description: Generates damage depending on with body part player was hit
		Return: none
*/
private["_injuryArray","_currentHitLocation","_source","_myInjuries","_currentHitNumber","_myChance", "_injuryLevel","_chance","_organDamage","_disease","_myInjuries"];
params["_currentHitLocation","_source"];
[3] spawn ClientModules_medical_fnc_bleed;
if(_currentHitLocation IN medical_injuryArray) then {
	_myInjuries = player getVariable ["medical_playerInjuries_toUpdate", [0,0,0,0,0,0,0,0,0,0,0]];
	_currentHitNumber = medical_injuryArray find _currentHitLocation;
	_mychance = round(random 2);
	_injuryLevel = (_myInjuries select _currentHitnumber) + _myChance;
	if(_injuryLevel > 4) then { _injuryLevel = 4; };
	_myInjuries set [_currentHitNumber, _injuryLevel];
	if(_currentHitLocation == "Body") then {
		_chance = round (random 40);
		if(_chance < 7) then {
			_organDamage = round (random 4);
			_myInjuries set [9, _organDamage];
		};
	};
	_chance = round (random 500);
	if(_chance < 5) then {
		_disease = round (random 4);
		_myInjuries set [10, _disease];
	};
	player setVariable ["medical_playerInjuries_toUpdate", _myInjuries, false];
	[] spawn ClientModules_Medical_fnc_update;
	diag_log format["%1 %2", _this, _myInjuries];
	if(_currentHitLocation IN ["head","face_hub","neck"] && _source != player) exitWith {
		["Remove",1,_source,1] spawn ClientModules_Medical_fnc_DoHealth;
	};
	if(_currentHitLocation IN ["body","spine1","spine2","spine3"] && _source != player) exitWith {
		[21] spawn ClientModules_Medical_fnc_bleed;
	};
	if(_currentHitLocation IN ["legs","pelvis","hands","arms"] && _source != player) exitWith {
		[10] spawn ClientModules_Medical_fnc_bleed;
	};
};
