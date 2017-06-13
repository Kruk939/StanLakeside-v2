/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of update
			1 - Array, data
		Description: Updates data in the database
		Return: nothing
*/
params[["_type", ""], ["_data", []],["_function_name",""],["_player",objNull]];
private["_query","_queryString"];
if(_type == "visual") exitWith {
	private["_plate", "_color", "_material", "_rims","_windows","_lights"];
	_plate = _data select 0;
	_color = _data select 1;
	_material = _data select 2;
	_rims = _data select 3;
	_windows = _data select 4;
	_lights = _data select 5;
	_queryString = format["company_garage_updateVisual:%1:%2:%3:%4:%5:%6:%7", _color, _material, _rims, _windows, _lights, _plate];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "statuses") exitWith {
	private["_vID","_status","_fuel","_hit"];
	_vID = _data select 0;
	_status = _data select 1;
	_fuel = _data select 2;
	_hit = _data select 3;
	_queryString = format["company_garage_updateStatusStore:%1:%2:%3:%4", _status, _hit, _fuel, _vID];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "active") exitWith {
	private["_vID"];
	_vID = _data select 0;
	_queryString = format["company_garage_updateStatus:%1:%2", 1, _vID];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "deactive") exitWith {
	private["_vID"];
	_vID = _data select 0;
	_queryString = format["company_garage_updateStatus:%1:%2", 0, _vID];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "license") exitWith {
	private["_old_plate","_new_plate"];
	_old_plate = _data select 0;
	_new_plate = _data select 1;
	_queryString = format["company_garage_updateLicense:%1:%2", _new_plate, _old_plate];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "access_level") exitWith {
	private["_vID", "_access_level"];
	_vID = _data select 0;
	_access_level = _data select 1;
	_queryString = format["company_garage_updateAccessLevel:%1:%2", _access_level, _vID];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
