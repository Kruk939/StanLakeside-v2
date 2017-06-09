params["_player", "_classname", "_price", "_color", "_material", "_rims", "_windows", "_lights", "_hits"];

_bought = false;
_type = "";
if (_classname isKindOf "Car") then {
	{
		if ((_x select 0) isEqualTo _classname) then {
			if ((_x select 2) > 0) then {
				_count = (_x select 2) - 1;
				_bought = true;
				[_price] remoteExecCall ["Client_fnc_removeCash",_player];
				_x set [2, _count];
				_type = "car";
				_update = [0, format["showroom_updateCount:%1:%2", _count, _classname]] call ExternalS_fnc_ExtDBquery;
			} else {
				[localize ("STR_RPF_SHOWROOM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
			};
		};
	} forEach RPF_Showroom_prices_car;
};
if (_classname isKindOf "Air") then {
	{
		if ((_x select 0) isEqualTo _classname) then {
			if ((_x select 2) > 0) then {
				_count = (_x select 2) - 1;
				_bought = true;
				[_price] remoteExecCall ["Client_fnc_removeCash",_player];
				_x set [2, _count];
				_type = "air";
				_update = [0, format["showroom_updateCount:%1:%2", _count, _classname]] call ExternalS_fnc_ExtDBquery;
			} else {
				[localize ("STR_RPF_SHOWROOM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
			};
		};
	} forEach RPF_Showroom_prices_air;
};
if (_classname isKindOf "Ship") then {
	{
		if ((_x select 0) isEqualTo _classname) then {
			if ((_x select 2) > 0) then {
				_count = (_x select 2) - 1;
				_bought = true;
				[_price] remoteExecCall ["Client_fnc_removeCash",_player];
				_x set [2, _count];
				_type = "ship";
				_update = [0, format["showroom_updateCount:%1:%2", _count, _classname]] call ExternalS_fnc_ExtDBquery;
			} else {
				[localize ("STR_RPF_SHOWROOM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
			};
		};
	} forEach RPF_Showroom_prices_ship;
};
if (_bought) exitWith {
	_licensePlate = "abcdefg";
	_licenseAlphaArray 	= ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"];

	_l1 = _licenseAlphaArray call BIS_fnc_selectRandom;
	_l2 = _licenseAlphaArray call BIS_fnc_selectRandom;
	_l3 = _licenseAlphaArray call BIS_fnc_selectRandom;
	_l4 = _licenseAlphaArray call BIS_fnc_selectRandom;
	_licensePlate = format["%1%2%3%4%5",_l1,_l2,_l3,_l4,str(round(random [111,555,999]))];
	_check = [0, (format ["garage_existLicense:%1", _licensePlate])] call ExternalS_fnc_ExtDBquery;
	booli = (_check select 0) select 0;

	while {booli} do {
		sleep 3;
		_l1 = _licenseAlphaArray call BIS_fnc_selectRandom;
		_l2 = _licenseAlphaArray call BIS_fnc_selectRandom;
		_l3 = _licenseAlphaArray call BIS_fnc_selectRandom;
		_l4 = _licenseAlphaArray call BIS_fnc_selectRandom;
		_licensePlate = format["%1%2%3%4%5",_l1,_l2,_l3,_l4,str(round(random [111,555,999]))];
		_check = [0, (format ["garage_existLicense:%1", _licensePlate])] call ExternalS_fnc_ExtDBquery;
		booli = (_check select 0) select 0;
	};

	_update = [0, format["showroom_insertVehicle:%1:%2:%3:%4:%5:%6:%7:%8:%9:%10:%11:%12", _classname, getPlayerUID _player, _licensePlate, _hits, _color, _material, _rims, _windows, _lights, 1, 0, _type]] call ExternalS_fnc_ExtDBquery;
	[localize ("STR_RPF_SHOWROOM_SUCCESSFULLBUY")] remoteExecCall ["client_fnc_hintMP",_player];
};