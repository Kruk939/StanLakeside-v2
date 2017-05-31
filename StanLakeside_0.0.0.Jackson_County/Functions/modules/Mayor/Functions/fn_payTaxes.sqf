params ["_taxMoney"];
if (_taxMoney > 0) then {
	[_taxMoney] remoteExec ["ServerModules_Mayor_fnc_payTaxes",2];
};