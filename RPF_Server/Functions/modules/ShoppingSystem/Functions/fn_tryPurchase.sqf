params["_player","_classname","_type","_price"];

_bought = false;
_itemType = 0;
if (_type isEqualTo "general") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_General;
};
if (_type isEqualTo "pizza") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Pizza;
};
if (_type isEqualTo "fastfood") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Fastfood;
};
if (_type isEqualTo "bar") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Bar;
};
if (_type isEqualTo "clothingmen") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_ClothingMen;
};
if (_type isEqualTo "clothingwomen") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_ClothingWomen;
};
if (_type isEqualTo "donuts") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Donuts;
};
if (_type isEqualTo "glasses") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Glasses;
};
if (_type isEqualTo "gun") then {
	{
		if ((_x select 2) > 0) then {
			_count = (_x select 2) - 1;
			_itemType = (_x select 4);
			_bought = true;
			[_price] remoteExecCall ["Client_fnc_removeCash",_player];
			_x set [2, _count];
			_update = [0, format["shoppingsystem_updateCount:%1:%2:%3", _count, _classname, _type]] call ExternalS_fnc_ExtDBquery;
		} else {
			[localize ("STR_RPF_SHOPPINGSYSTEM_NOTAVAILABLE")] remoteExecCall ["client_fnc_hintMP",_player];
		};
	} forEach RPF_Shopping_Gun;
};

if (_bought) exitWith {
	[_classname,_itemType] remoteExec ["ClientModules_ShoppingSystem_fnc_confirmPurchase",_player];
};