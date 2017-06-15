/*
		Author: Kajetan "Kruk" Mruk
		Date: 08.06.2017
		Params:
			0 - Number, id of company player starts to work
		Description: Starting job, setting variables for your profession
		Return: nothing
*/
params[["_company_id",0]];
private["_exists","_xID","_index","_level","_variableName","_max_level","_offset","_newLevel"];
if(_company_id <= 0) exitWith {}; //Brak podanej firmy
_exists = [_company_id] call ClientModules_Company_fnc_inCompanyCheck;
if(!_exists) exitWith {}; //sprawdzamy czy gracz jest w takiej firmie
if((count company_var_active_data) != 0) then {
      [] call ClientModules_Company_fnc_job_stop;
};
company_var_active_data = [_company_id] call ClientModules_Company_fnc_companyGetData;
_level = company_var_active_data select 4;
{
      _xID = _x select 0;
      if(_xID == _company_id) then {
            _variableName = _x select 1;
            _max_level = _x select 2;
            _offset = _x select 3;
            _newLevel = _level - _offset;
            if(_newLevel > _max_level) then { _newLevel = _max_level};
            if(_newLevel < 0) then { _newLevel = 0 };
            player setVariable [_variableName, _newLevel, false];
      };
} forEach company_var_privliges;
[] spawn ClientModules_CompanyModules_fnc_initModules;
hint format["%1 %2",(localize "STR_RPF_MODULES_COMPANY_START_MSG"), company_var_active_data select 2];
[] spawn {
      private["_multiplayer","_payCheck","_multiplayer", "_company_id", "_company_name","_sleep"];
      if(count company_var_active_data == 0) exitWith {};
      if((company_var_active_data select 5) <= 0) exitWith {};
      _multiplayer = 5;
      _payCheck = round(company_var_active_data select 5 / (60/_multiplayer));
      _company_id = company_var_active_data select 0;
      _company_name = company_var_active_data select 2;
      _sleep = _multiplayer * 60;
      if(_payCheck > 0) exitWith {
            while{(count company_var_active_data) > 0} do {
                  uiSleep _sleep;
                  if(company_var_active_data select 0 != _company_id) exitWith {};
                  [_payCheck] call Client_fnc_addBank;
                  ["remove_id",[_company_id, _payCheck], "", player] remoteExec ["ServerModules_Company_fnc_balanceUpdate",2];
                  hint format[localize "STR_RPF_MODULES_COMPANY_PAYCHECK", _payCheck,  _company_name];
            };
      };
};
