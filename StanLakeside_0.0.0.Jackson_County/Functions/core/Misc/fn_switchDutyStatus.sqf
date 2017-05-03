/*
Author: Kerkkoh
First Edit: 7.9.2016

PARAMS:
0 - NUMBER - Duty status 0 goes off duty, status 1 goes on duty
1 - NUMBER - Type, 0 is cop, 1 is ems, 2 is fire

*/

params ["_d", "_t"];
if (_d == 0) then {
	if (_t == 0) then {
		_cop = player getVariable ["cop", 0];
		player setVariable ["cop", 0, true];
		player setVariable ["copoffduty", _cop, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};
	if (_t == 1) then {
		_ems = player getVariable ["ems", 0];
		player setVariable ["ems", 0, true];
		player setVariable ["emsoffduty", _ems, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		myjob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};
	if (_t == 2) then {
		_fire = player getVariable ["fire", 0];
		player setVariable ["fire", 0, true];
		player setVariable ["fireoffduty", _fire, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};

};

if (_d == 1) then {
	if (_t == 0) then {
		_cop = player getVariable ["copoffduty", 0];
		player setVariable ["cop", _cop, true];
		player setVariable ["copoffduty", 0, true];
		player setVariable ["coplevel", _cop, false];
		RPF_currentJob = "Cop";
		player setvariable ["lastsave",getUnitLoadout player, false];
		[0, 0] call Client_fnc_startDutyGear;
	};
	if (_t == 1) then {
		_ems = player getVariable ["emsoffduty", 0];
		player setVariable ["ems", _ems, true];
		player setVariable ["emsoffduty", 0, true];
		player setVariable ["coplevel", 1, false];
		RPF_currentJob = "EMS";
		myjob = "EMS"; //this variable is using by hospital on silverlake map for medics who need access to opening doors
		player setvariable ["lastsave",getUnitLoadout player, false];
		[1, 0] call Client_fnc_startDutyGear;
	};
	if (_t == 2) then {
		_fire = player getVariable ["fireoffduty", 0];
		player setVariable ["fire", _fire, true];
		player setVariable ["fireoffduty", 0, true];
		player setVariable ["coplevel", 1, false];
		RPF_currentJob = "Fire";
		player setvariable ["lastsave",getUnitLoadout player, false];
		[2, 0] call Client_fnc_startDutyGear;
	};

};
