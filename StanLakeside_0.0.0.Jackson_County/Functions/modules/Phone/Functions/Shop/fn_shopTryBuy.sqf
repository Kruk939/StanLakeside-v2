_price = 0;

_index = lbCurSel (1500);
_status = lbData[1500, _index];
_data = call compile format["%1", _status];

_skin = (_data select 0);
_price = (_data select 1);

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_data = call compile format["%1", _status];

_background = (_data select 0);
_price = _price + (_data select 1);

_index = lbCurSel (1502);
_status = lbData[1502, _index];
_data = call compile format["%1", _status];

_ringtone = (_data select 0);
_price = _price + (_data select 1);

if (!([1, _price] call Client_fnc_checkMoney)) exitWith {hint (localize "STR_RPF_MODULES_PHONE_NOTENOUGHCASH");};

[player,_price,_skin,_background,_ringtone] remoteExecCall ["ServerModules_Phone_fnc_shopTryBuy",2];