/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of get
			1 - String, Data string(id or plate)
			2 - String, name of the function to return to
			3 - Object, player object to return to
		Description: Returns data to player
		Return: nothing
*/
private["_ct","_id_company","_level","_query","_data","_id_vehicle","_Vtype","_license"];
params[["_type",""],["_data",[]],["_function_name",""],["_player", objNull]];
if(_type == "avialable") exitWith {
	_id_company = _data select 0;
	_level = _data select 1;
	_ct = _data select 2;
	_Vtype = "";
	if ((typeOf _ct) find "Hangar_F" > -1) then {_Vtype = "air";} else {_Vtype = "car";};
	if (str CurrentCursorTarget find "embarcadero" > -1 ) then {_Vtype = "ship";};

	_query= format["company_garage_getVehicles:%1:%2:%3:%4", _id_company, 0, _Vtype, _level];
	_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	diag_log _data;
	[_data] remoteExec[_function_name, _player];
};
if(_type == "all") exitWith {
	_id_company = _data select 0;
	_Vtype = "";_query= format["company_garage_getVehicles_all:%1", _id_company];
	_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	[_data] remoteExec[_function_name, _player];
};
if(_type == "id") exitWith {
	_id_vehicle = _data select 0;
	_query = format["company_garage_getVehicle:%1", _id_vehicle];
	_data = ([_query,2] call ExternalS_fnc_ExtDBasync) select 0;
	diag_log _data;
	[_data] remoteExec[_function_name, _player];
};
if(_type == "exists") exitWith {
	_license = _data select 0;
	_query = format["company_garage_existLicense:%1", _license];
	_data = (([_query,2] call ExternalS_fnc_ExtDBasync) select 0) select 0;
	_data
};
