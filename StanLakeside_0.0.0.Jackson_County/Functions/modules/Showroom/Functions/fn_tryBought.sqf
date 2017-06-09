_index = lbCurSel (1500);
_status = lbData[1500, _index];
_data = call compile format["%1", _status];
_classname = _data select 0;
_price = _data select 1;

_index = lbCurSel (1501);
_status = lbData[1501, _index];
_color = call compile format["%1", _status];

_material = "Glossy";
if (RPF_Showroom_veh isKindOf "Car") then {
	_index = lbCurSel (1502);
	_status = lbData[1502, _index];
	_data = call compile format["%1", _status];
	_material = _data select 0;
	_priceMaterial = _data select 1;
	_price = _price + _priceMaterial;
};

_check = [1, _price] call Client_fnc_checkMoney;
if (!_check) exitWith {hint "Nie masz wystarczająco pieniędzy!";};
_hits = [];
_hits = [RPF_Showroom_veh] call Client_fnc_vehicleHitGet;

closeDialog 0;

_rims = "antiquewhite";
_windows = 0;
_lights = 0;

[player, _classname, _price, _color, _material, _rims, _windows, _lights, _hits] remoteExecCall ["ServerModules_Showroom_fnc_tryBought",2];