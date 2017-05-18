/*
Author: Kerkkoh

First Edit: 17.4.2016
*/
_amount = parseNumber (ctrlText 1401);
_account = parseNumber (ctrlText 1402);

if (_amount <= 0) exitWith {
	hint "Invalid amount!";
};
if (_amount > 999999) exitWith {hint "Kwota nie może być większa niż 999 999$!";};

if (player getVariable "bankAccount" == _account) exitWith {
	hint "Can't send money to yourself";
};

[_account, _amount, player] remoteExecCall ["ServerModules_ATM_fnc_transferMoney", 2];
