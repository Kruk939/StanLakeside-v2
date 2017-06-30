/*
		Author: Kajetan "Kruk" Mruk
		Date: 19.04.2017
		Params:
			0 - String, Type of delete
			1 - String, Data string(id or plate)
		Description: Updates data in the database
		Return: nothing
*/
private["_query","_queryString","_company_id","_employee_id","_applicant_id"];
params[["_type",""],["_data",[]]];
if(_type == "employee") exitWith {
	_company_id = _data select 0;
	_employee_id = _data select 1;
	_queryString = format["company_employees_delete:%1:%2", _company_id, _employee_id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
if(_type == "applicant") exitWith {
	_applicant_id = _data select 0;
	_queryString = format["company_applicants_delete:%1", _applicant_id];
	_query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
};
