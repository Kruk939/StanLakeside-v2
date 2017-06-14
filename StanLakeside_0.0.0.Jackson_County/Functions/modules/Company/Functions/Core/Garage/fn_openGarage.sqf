/*
Author: Kerkkoh
First Edit: 6.9.2016
*/
params ["_ct"];
private["_id_company","_level"];
if((count company_var_active_data) == 0) exitWith {};
_id_company = company_var_active_data select 0;
_level = company_var_active_data select 4;
createDialog "company_garage";

["avialable",[_id_company,_level,_ct],"ClientModules_Company_fnc_receiveGarage",player] remoteExecCall ["ServerModules_Company_fnc_garageGet", 2];
