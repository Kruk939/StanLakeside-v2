if((count company_var_active_data) == 0) exitWith {};
private["_company_id"];
_company_id = company_var_active_data select 0;
["COMPANY_MAIN",[_company_id],"ClientModules_Company_fnc_main_recieve",player] remoteExec ["ServerModules_Company_fnc_employeesGet",2];
