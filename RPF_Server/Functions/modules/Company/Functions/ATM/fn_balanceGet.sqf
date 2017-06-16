/*
		Author: Kajetan "Kruk" Mruk
		Date: 09.06.2017
		Params:
			0 - String, Type of get
			1 - Array, Data
			2 - String, name of the function to return to
			3 - Object, player object to return to
		Description: Returns data to player
		Return: nothing
*/
params[["_type",""],["_data",[]],["_function_name",""],["_player",objNull]];
private["_query","_data","_id_company","_balance","_employees","_companies"];
if(_type == "openATM_id") exitWith {
	_id_company = _data select 0;
	_query= format["company_getBank_id:%1", _id_company];
	_balance = ([_query,2] call ExternalS_fnc_ExtDBasync) select 0;
	_query= format["company_getEmployees_Company_ID:%1", _id_company];
	_employees = [_query,2] call ExternalS_fnc_ExtDBasync;
	_query= format["company_getAllCompany"];
	_companies = [_query,2] call ExternalS_fnc_ExtDBasync;
	//_query= format["company_getBank_id:%1", _id_company];
	//_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	diag_log _data;
	[_balance,_employees,_companies,[]] remoteExec[_function_name, _player];
};
