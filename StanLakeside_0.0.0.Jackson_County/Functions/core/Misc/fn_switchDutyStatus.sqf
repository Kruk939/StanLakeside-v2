/*
you want join or leave job
_d = 0 leave job
_d = 1 join job


to what you wanna join
_t = 0 cop
_t = 1 ems
_t = 2 fire
_t = 3 mafia
*/

params ["_d", "_t"];
if (_d isEqualTo 0) then {
	if (_t isEqualTo 0) then {
		_cop = player getVariable ["cop", 0];
		player setVariable ["cop", 0, true];
		player setVariable ["copoffduty", _cop, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};
	if (_t isEqualTo 1) then {
		_ems = player getVariable ["ems", 0];
		player setVariable ["ems", 0, true];
		player setVariable ["emsoffduty", _ems, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		myjob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};
	if (_t isEqualTo 2) then {
		_fire = player getVariable ["fire", 0];
		player setVariable ["fire", 0, true];
		player setVariable ["fireoffduty", _fire, true];
		player setVariable ["coplevel", 0, false];
		RPF_currentJob = "none";
		_playerGear = player getVariable "lastSave";
		player setunitloadout _playerGear;
	};
	if (_t isEqualTo 3) then {
		_mafia = player getVariable ["mafia", 0];
		player setVariable ["mafia", 0, true];
		player setVariable ["mafiaoffduty", _mafia, true];
		player setVariable ["mafia", 0, false];
		RPF_currentJob = "none";
	};

};

if (_d isEqualTo 1) then {
	if (_t isEqualTo 0) then {
		_cop = player getVariable ["copoffduty", 0];
		player setVariable ["cop", _cop, true];
		player setVariable ["copoffduty", 0, true];
		player setVariable ["coplevel", _cop, false];
		RPF_currentJob = "Cop";
		player setvariable ["lastsave",getUnitLoadout player, false];
		[0, 0] call Client_fnc_startDutyGear;
	};
	if (_t isEqualTo 1) then {
		_ems = player getVariable ["emsoffduty", 0];
		player setVariable ["ems", _ems, true];
		player setVariable ["emsoffduty", 0, true];
		player setVariable ["coplevel", 1, false];
		RPF_currentJob = "EMS";
		myjob = "EMS"; //this variable is using by hospital on silverlake map for medics who need access to opening doors
		player setvariable ["lastsave",getUnitLoadout player, false];
		[1, 0] call Client_fnc_startDutyGear;
	};
	if (_t isEqualTo 2) then {
		_fire = player getVariable ["fireoffduty", 0];
		player setVariable ["fire", _fire, true];
		player setVariable ["fireoffduty", 0, true];
		player setVariable ["coplevel", 1, false];
		RPF_currentJob = "Fire";
		player setvariable ["lastsave",getUnitLoadout player, false];
		[2, 0] call Client_fnc_startDutyGear;
	};
	if (_t isEqualTo 3) then {
		_mafia = player getVariable ["mafiaoffduty", 0];
		player setVariable ["mafia", _mafia, true];
		player setVariable ["mafiaoffduty", 0, true];
		player setVariable ["mafia", 1, false];
		RPF_currentJob = "Mafia";
	};

};
