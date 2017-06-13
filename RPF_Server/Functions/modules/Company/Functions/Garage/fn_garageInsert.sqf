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
private["_id_company","_license","_class","_color","_material","_rims","_windows","_lights","_statuses","_skin","_queryString","_query"];
if(_type == "") exitWith {
	//TODO przenoszenie pojazdu z garazu gracza

};
if(_type == "new") exitWith {
	_class = _data select 0;
	_id_company = _data select 1;
	_license = _data select 2;
	_color = _data select 3;
	_material = _data select 4;
	_rims = _data select 5;
	_windows = _data select 6;
	_lights = _data select 7;
	_statuses = _data select 8;
	if(["exists",[_license]] call ServerModules_Company_garageGet) then {


	} else {
		_queryString = format["company_garage_insertVehicle:%1:%2:%3:%4:%5:%6:%7:%8:%9", _class, _id_company, _license, _color, _material, _rims, _windows, _lights, _statuses];
		_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;

	};
};
