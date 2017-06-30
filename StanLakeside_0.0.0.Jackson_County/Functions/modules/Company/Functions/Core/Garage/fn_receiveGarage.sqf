/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params [["_vehicles",[]]];
private["_veh","_display","_edit_plate","_list_vehicles","_text_title"];
disableSerialization;
_display = findDisplay 666010;
_list_vehicles = _display displayCtrl 1500;
{
	_veh = lbAdd[1500, format[localize("STR_RPF_MODULES_COMPANY_GARAGE_INFOLB"), [_x select 1] call Client_fnc_getVehicleName, _x select 3]];
	lbSetData [1500, _veh, str _x];
} forEach _vehicles;
lbSetCurSel [1101, 0];
