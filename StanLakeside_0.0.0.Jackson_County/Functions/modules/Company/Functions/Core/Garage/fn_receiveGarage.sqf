/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params [["_vehicles",[]]];
private["_veh","_display","_edit_plate","_list_vehicles","_text_title"];
disableSerialization;
_display = findDisplay 666010;
_edit_plate = _display displayCtrl 1001;
_list_vehicles = _display displayCtrl 1101;
_text_title = _display displayCtrl 1301;
_text_title ctrlSetText (company_var_active_data select 2);
{
	_veh = lbAdd[1101, format["%1 REJESTRACJA: %2", [_x select 1] call Client_fnc_getVehicleName, _x select 3]];
	lbSetData [1101, _veh, str _x];
} forEach _vehicles;
lbSetCurSel [1101, 0];
