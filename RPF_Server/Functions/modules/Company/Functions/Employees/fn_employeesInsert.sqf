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
private["_company_id","_employee_uid","_queryString","_query", "_access_level"];
if(_type == "new") exitWith {
	_company_id = _data select 0;
	_employee_uid = _data select 1;
	_access_level = _data select 2;
	_queryString = format["company_employees_insert:%1:%2:%3",_company_id, _employee_uid, _access_level];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "applicant") exitWith {
	private["_company_id","_description","_player_uid"];
	_company_id = _data select 0;
	_description = _data select 1;
	_player_uid = _data select 2;
	_queryString = format["company_applicants_insert:%1:%2:%3",_company_id, _description, _player_uid];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
