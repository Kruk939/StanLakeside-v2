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
params[["_type",""],["_data",[]],["_function_name",""],["_player",objNull]];

if(_type == "init") exitWith {
	private["_uid_player","_query","_privlages","_companies"];
	_uid_player = _data select 0;
	_query= format["company_getPrivligesCurrent:%1", _uid_player];
	_privlages = [_query,2] call ExternalS_fnc_ExtDBasync;
	_query= format["company_getCompanyCurrent:%1", _uid_player];
	_companies = [_query,2] call ExternalS_fnc_ExtDBasync;
	[_companies, _privlages] remoteExec [_function_name, _player];
};
if(_type == "bank") exitWith {


};
/*
if(_type == "player") exitWith {
	_uid_player = _data select 0;
	_query= format["getCompany_player:%1", _uid_player];
	_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	diag_log _data;
	_data remoteExec[_function_name, _player];
};
if(_type == "id") exitWith {
	_id_company = _data select 0;
	_query = format["getCompany_id:%1", _id_company];
	_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	diag_log _data;
	_data remoteExec[_function_name, _player];
};
if(_type == "all") exitWith {
	_query = format["getCompany_all"];
	_data = [_query,2] call ExternalS_fnc_ExtDBasync;
	diag_log _data;
	_data remoteExec[_function_name, _player];
};
*/
