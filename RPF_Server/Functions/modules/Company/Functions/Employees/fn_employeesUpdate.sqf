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
if(_type == "update") exitWith {
	private["_salary","_access_level","_employee_id","_company_id"];
	_salary = _data select 0;
	_access_level = _data select 1;
	_employee_id = _data select 2;
	_company_id = _data select 3;
	_queryString = format["company_employees_update:%1:%2:%3:%4", _salary, _access_level, _employee_id, _company_id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
