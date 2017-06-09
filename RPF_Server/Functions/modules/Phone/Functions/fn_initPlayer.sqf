params["_player"];
_uid = getPlayerUID _player;

if ((([(format["phone_existPhone:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0) select 0) then {
	_fetch = (([(format ["phone_getData:%1", _uid]), 2] call ExternalS_fnc_ExtDBasync) select 0);

	_player setVariable ["phoneNumber", _fetch select 0, true];
	_player setVariable ["phoneBalance", _fetch select 1, true];
	_player setVariable ["phoneRing", _fetch select 2, true];
	_player setVariable ["phoneSkin", _fetch select 3, true];
	_player setVariable ["phoneBackground", _fetch select 4, true];
} else {
	_insertstr = format["phone_insertPhone:%1:%2", [] call ServerModules_Phone_fnc_phoneNumber, _uid];
	_insert = [0, _insertstr] call ExternalS_fnc_ExtDBquery;

	uiSleep 2;
	[_player] spawn ServerModules_Phone_fnc_initPlayer;
};