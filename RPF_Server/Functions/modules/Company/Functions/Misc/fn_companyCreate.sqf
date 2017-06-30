/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.06.2017
		Params: none
		Description: Sending back information to the client to check if company exists if not then creates new company
		Return: true if company exists
*/
params[["_player",objNull],["_uid_player",""],["_fullname",""],["_shortname",""]];
private["_error","_queryString","_data","_query","_company","_company_id"];
_error = false;
diag_log _this;
diag_log "fn_companyCreate.sqf";
if(_player == objNull || _uid_player == "" || _shortname == "" || _fullname == "") exitWith {};

_queryString = format["company_exists:%1", _shortname];
_error = (([_queryString,2] call ExternalS_fnc_ExtDBasync) select 0) select 0;

if(_error) then {
      [true] remoteExec ["ClientModules_Company_fnc_company_create_check",_player];
} else {
      _queryString = format["company_list_insert:%1:%2:%3", _shortname, _fullname, _uid_player];
      _query = [0, _queryString] call ExternalS_fnc_ExtDBquery;
      _query= format["company_getCompany_Short:%1:%2", _shortname, _uid_player];
      _company = ([_query,2] call ExternalS_fnc_ExtDBasync) select 0;
      if((count _company) == 0) exitWith {
            [true] remoteExec ["ClientModules_Company_fnc_company_create_check",_player];
      };
      _company_id = _company select 0;
      ["new", [_company_id,_uid_player,10], "", ""] call ServerModules_Company_fnc_employeesInsert;
      [false] remoteExec ["ClientModules_Company_fnc_company_create_check",_player];
};
