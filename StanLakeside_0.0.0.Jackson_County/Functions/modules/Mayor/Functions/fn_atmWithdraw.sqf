_amount = round (parseNumber (ctrlText 1400));
if (_amount > 999999) exitWith {hint "Kwota nie może być większa niż 999 999$!";};
if (_amount > 0) then {
	if (_amount < mayorbank) then {
		closeDialog 0;

		["Remove",_amount] remoteexec ["ServerModules_fnc_updateMayorATM",2];
		[_amount] call Client_fnc_addCash;
	} else {
		hint "Not enough bank balance!";
	};
} else {
	hint "Withdrawal amount must be more than $0!";
};