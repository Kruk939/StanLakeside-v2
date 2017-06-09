/*
Author: Kerkkoh
Last Edit: 23.11.2015
*/
params ["_player", "_firstLogin"];

waitUntil {!(isNil{extDB_SQL_CUSTOM_ID})};
waitUntil {!(isNil "RPF_Server_Inited")};

_uid = getPlayerUID _player;

if ((([(format["existPlayerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0) select 0) then {

	_fetch = [(format ["playerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync;
	_res = _fetch select 0;
	
	//cash
	_player setVariable ["cash", _res select 3, true];
	_player setVariable ["bank", _res select 4, true];
	_player setVariable ["bankAccount", _res select 7, true];

	//factions
	_player setVariable ["cop", 0, true];
	_player setVariable ["copoffduty", _res select 5, true];
	_player setVariable ["ems", 0, true];
	_player setVariable ["emsoffduty", _res select 6, true];
	_player setVariable ["fire", 0, true];
	_player setVariable ["fireoffduty", _res select 10, true];
	_player setVariable ["mafia", 0, true];
	_player setVariable ["mafiaoffduty", _res select 12, true];
	_player setVariable ["legal", 0, true];
	_player setVariable ["legaloffduty", _res select 13, true];
	_player setVariable ["doughnuts", 0, true];
	_player setVariable ["doughnutsoffduty", _res select 15, true];

	//other shit
	_player setVariable ["hunger", _res select 8, true];
	_player setVariable ["thirst", _res select 9, true];
	_player setVariable ["respawn", _res select 14, true];
	_player setVariable ["houselevel", _res select 11, true];

	_queryStr = format["getSLPDPrison_active:%1:%2", _uid, 1];
	_prison = [_queryStr, 2] call ExternalS_fnc_ExtDBasync;

	_house = [0,0,0];
	switch (_res select 11) do {
		case 1: {_house = tier1housing call BIS_fnc_selectRandom; _pia = tier1housing find _house; tier1housing deleteAt _pia;};
		case 2: {_house = tier1housing call BIS_fnc_selectRandom; _pia = tier1housing find _house; tier1housing deleteAt _pia;};
		case 3: {_house = tier1housing call BIS_fnc_selectRandom; _pia = tier1housing find _house; tier1housing deleteAt _pia;};
		case 4: {_house = tier2housing call BIS_fnc_selectRandom; _pia = tier2housing find _house; tier2housing deleteAt _pia;};
		case 5: {_house = tier2housing call BIS_fnc_selectRandom; _pia = tier2housing find _house; tier2housing deleteAt _pia;};
		case 6: {_house = tier2housing call BIS_fnc_selectRandom; _pia = tier2housing find _house; tier2housing deleteAt _pia;};
		case 7: {_house = tier3housing call BIS_fnc_selectRandom; _pia = tier3housing find _house; tier3housing deleteAt _pia;};
		case 8: {_house = tier3housing call BIS_fnc_selectRandom; _pia = tier3housing find _house; tier3housing deleteAt _pia;};
		case 9: {_house = tier3housing call BIS_fnc_selectRandom; _pia = tier3housing find _house; tier3housing deleteAt _pia;};
		case 10: {_house = tier3housing call BIS_fnc_selectRandom; _pia = tier3housing find _house; tier3housing deleteAt _pia;};
	};
	_player setVariable ["house", _house, true];

	private _mayor = false;
	if(_uid isEqualTo currentMayor) then {
		_mayor = true;
	};
	
	[_res select 0, _res select 1, _res select 2, (getpos _house), _mayor, _prison] remoteExecCall ["Client_fnc_loadInventory", _player];
	
	if (_firstLogin) then {
		[_player] call ServerModules_fnc_firstLogin;
	};
} else {	
	_insertstr = format["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12", _uid, name _player, [(uniformItems _player), (vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player), (vest _player), (backpack _player), (headgear _player)], [], 1, 2000, 0, 0, position _player, 0, [] call Server_fnc_bankAccountNumber];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	
	uiSleep 2;
	
	[_player, true] spawn Server_fnc_initStats;
};