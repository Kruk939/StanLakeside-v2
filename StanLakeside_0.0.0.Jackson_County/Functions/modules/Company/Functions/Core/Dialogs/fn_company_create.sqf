/*
		Author: Kajetan "Kruk" Mruk
		Date: 16.06.2017
		Params: none
		Description: Sending information to the server to check if company exists
		Return: none
*/
disableSerialization;
private["_display", "_edit_shortcut", "_edit_fullname", "_fullname", "_shortname","_create_button"];
_display = findDisplay 666012;
_edit_shortcut = _display displayCtrl 1400;
_edit_fullname = _display displayCtrl 1401;
_shortname = ctrlText 1400;
_fullname = ctrlText 1401;
_create_button = _display displayCtrl 1201;
_create_button ctrlEnable false;
diag_log "fn_company_create.sqf";
if(_shortname == "" || _fullname == "") exitWith {
      hint (localize "STR_RPF_MODULES_COMPANY_FIELDBLANK");
};
if(!([2, company_var_company_create_price] call Client_fnc_checkMoney)) exitWith {
      hint (localize "STR_RPF_MODULES_COMPANY_NOTENOUGHMONEY");
};
[player, getPlayerUID player, _fullname, _shortname] remoteExec ["ServerModules_Company_fnc_companyCreate",2];
