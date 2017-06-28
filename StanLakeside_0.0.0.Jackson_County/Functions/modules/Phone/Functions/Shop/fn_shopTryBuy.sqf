_price = 0;

_data = call compile format["%1", lbData[1500, lbCurSel (1500)]];

_skin = (_data select 0);
_price = (_data select 1);

_data = call compile format["%1", lbData[1501, lbCurSel (1501)]];

_background = (_data select 0);
_price = _price + (_data select 1);

_data = call compile format["%1", lbData[1502, lbCurSel (1502)]];

_ringtone = (_data select 0);
_price = _price + (_data select 1);

if (!([1, _price] call Client_fnc_checkMoney)) exitWith {hint (localize "STR_RPF_MODULES_PHONE_NOTENOUGHCASH");};

[player,_price,_skin,_background,_ringtone] remoteExecCall ["ServerModules_Phone_fnc_shopTryBuy",2];