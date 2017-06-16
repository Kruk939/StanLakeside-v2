params ["_garage"];

{
	_veh = lbAdd [1500, format["%1 REJESTRACJA: %2", [_x select 1] call Client_fnc_getVehicleName, _x select 3]];
	lbSetData [1500, _veh, str _x];
} forEach _garage;

lbSetCurSel [1500, 0];