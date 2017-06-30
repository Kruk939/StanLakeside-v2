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
private["_query"];
params[["_type",""],["_data",[]],["_function_name",""],["_player", objNull]];
if(_type == "ID_COMPANY") exitWith {
	private["_company_id","_employees"];
	_company_id = _data select 0;
	_query = format["company_getEmployees_Company_ID:%1", _company_id];
	_employees = [_query,2] call ExternalS_fnc_ExtDBasync;
	[_employees] remoteExec[_function_name, _player];
};
if(_type == "COMPANY_EMPLOYEE") exitWith {
	private["_employee_id","_eData","_logs"];
	_employee_id = _data select 0;
	_query = format["company_employee_getID:%1", _employee_id];
	_eData = ([_query,2] call ExternalS_fnc_ExtDBasync) select 0;
	_logs = [];
	[_eData, _logs] remoteExec [_function_name, _player];
};
if(_type == "NOT_IN_COMPANY") exitWith {
	private["_uid","_eData"];
	_uid = _data select 0;
	_query = format["company_getCompanyNOTCurrent:%1", _uid];
	_eData = [_query,2] call ExternalS_fnc_ExtDBasync;
	[_eData] remoteExec [_function_name, _player];
};
if(_type == "COMPANY_MAIN") exitWith {
	private["_company_id","_eData","_applicants"];
	_company_id = _data select 0;
	_query = format["company_getEmployees_Company_ID:%1", _company_id];
	_eData = [_query,2] call ExternalS_fnc_ExtDBasync;
	_query = format["company_applicants_getALL:%1", _company_id];
	_applicants = [_query,2] call ExternalS_fnc_ExtDBasync;
	[_eData, _applicants] remoteExec [_function_name, _player];
};
