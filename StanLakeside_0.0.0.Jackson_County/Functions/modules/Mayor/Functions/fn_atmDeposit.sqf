_amount = round (parseNumber (ctrlText 1400));
if (_amount > 999999) exitWith {hint "Kwota nie może być większa niż 999 999$!";};
if (_amount > 0) then {
	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		closeDialog 0;
		
		[_amount] call Client_fnc_removeCash;
		["Add",_amount] remoteexec ["ServerModules_fnc_updateMayorATM",2];
	} else {
		hint "Not enough cash!";
	};
} else {
	hint "Deposit amount must be more than $0!";
};