/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_garage"];

{
	_veh = lbAdd [1500, format[(localize "STR_RPF_MODULES_GARAGE_REG"), [_x select 1] call Client_fnc_getVehicleName, _x select 3]];
	lbSetData [1500, _veh, str _x];
} forEach _garage;

lbSetCurSel [1500, 0];
