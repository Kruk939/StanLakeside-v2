/*
Author: Kerkkoh

First Edit: 17.4.2016
*/
_amount = parseNumber (ctrlText 1401);
_account = parseNumber (ctrlText 1402);

if (_amount <= 0) exitWith {
	hint (localize "STR_RPF_MODULES_ATM_INVALIDAMOUNT");
};
if (_amount > 999999) exitWith {hint (localize "STR_RPF_MODULES_ATM_MORETHAN");};

if (player getVariable "bankAccount" == _account) exitWith {
	hint (localize "STR_RPF_MODULES_ATM_CANTSENDYOURSELF");
};

[_account, _amount, player] remoteExecCall ["ServerModules_ATM_fnc_transferMoney", 2];
