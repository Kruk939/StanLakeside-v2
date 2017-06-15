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

[player,_price,_skin,_background,_ringtone] remoteExecCall ["ServerModules_Phone_fnc_shopTryBuy",2];