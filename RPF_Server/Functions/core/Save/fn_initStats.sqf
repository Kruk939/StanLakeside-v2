/*
Author: Kerkkoh
Last Edit: 23.11.2015
*/
params ["_player", "_firstLogin"];

waitUntil {!(isNil{extDB_SQL_CUSTOM_ID})};
waitUntil {!(isNil "RPF_Server_Inited")};

_uid = getPlayerUID _player;

if ((([(format["existPlayerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0) select 0) then {

	_res = ([(format ["playerInfo:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0;

	/*
	0 - items
	1 - clothes
	2 - weapons
	3 - cash
	4 - bank
	5 - bankaccount
	6 - hunger
	7 - thirst
	8 - houselevel
	9 - respawn
	*/
	
	//cash
	_player setVariable ["cash", _res select 3, true];
	_player setVariable ["bank", _res select 4, true];
	_player setVariable ["bankAccount", _res select 5, true];

	//other shit
	_player setVariable ["hunger", _res select 6, true];
	_player setVariable ["thirst", _res select 7, true];
	_player setVariable ["respawn", _res select 9, true];
	_player setVariable ["houselevel", _res select 8, true];

	_house = [0,0,0];
	switch (_res select 8) do {
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
	
	[_res select 0, _res select 1, _res select 2, (getpos _house)] remoteExecCall ["Client_fnc_loadInventory", _player];
	
	if (_firstLogin) then {
		[_player] call ServerModules_fnc_firstLogin;
	};
} else {	
	/*
	1 - uid
	2 - name
	3 - items
	4 - clothes
	5 - weapons
	6 - cash
	7 - bank
	8 - position
	9 - bankaccount
	*/
	_insertstr = format["insertPlayerInfo:%1:%2:%3:%4:%5:%6:%7:%8:%9", _uid, name _player, [(uniformItems _player),(vestItems _player), (backpackItems _player), (assignedItems _player)], [(uniform _player),(vest _player), (backpack _player), (headgear _player)], [], 1, 2000, position _player, [] call Server_fnc_bankAccountNumber];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;
	
	uiSleep 2;
	
	[_player, true] spawn Server_fnc_initStats;
};