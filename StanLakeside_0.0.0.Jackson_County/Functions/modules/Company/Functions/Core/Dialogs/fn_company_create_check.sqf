/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.06.2017
		Params:
			0 - Boolean, true - company with same shortname exists
		Description: Just checking function, don't mind it
		Return: nothing
*/
disableSerialization;
params[["_return",false]];
private["_display","_create_button"];
diag_log "fn_company_create_check.sqf";
_display = findDisplay 666012;
_create_button = _display displayCtrl 1201;
if(_return) exitWith {
            hint (localize "STR_RPF_MODULES_COMPANY_CREATE_EXISTS");
            _create_button ctrlEnable true;
};
hint (localize "STR_RPF_MODULES_COMPANY_CREATE_DONE");
[company_var_company_create_price] call Client_fnc_removeCash;
[player, getPlayerUID player] remoteExec ["ServerModules_Company_fnc_startInit",2];
