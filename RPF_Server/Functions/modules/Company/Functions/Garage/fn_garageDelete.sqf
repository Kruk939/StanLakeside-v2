/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of delete
			1 - String, Data string(id or plate)
		Description: Updates data in the database
		Return: nothing
*/
private["_query","_queryString","_company_id","_vehicle_id"];
params[["_type",""],["_data",[]]];
if(_type == "company_id") exitWith {
	_company_id = _data select 0;
	_vehicle_id = _data select 1;
	_queryString = format["company_garage_deleteVehicle:%1:%2", _company_id, _vehicle_id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
