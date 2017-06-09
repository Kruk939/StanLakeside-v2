/*
		Author: Kajetan "Kruk" Mruk
		Date: 09.06.2017
		Params: none
		Description: Opens dialog and send request to the server for data
		Return: nothing
*/
private["_company_id"];
if(dialog) exitWith {};
if((count company_var_active_data) == 0) exitWith {};
createDialog "company_atm";
_company_id = company_var_active_data select 0;
["openATM_id",[_company_id],"ClientModules_Company_fnc_reciveATM",player] remoteExec ["ServerModules_Company_fnc_balanceGet",2];
