/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = round (parseNumber (ctrlText 1400));
if (_amount > 999999) exitWith {hint (localize "STR_RPF_MODULES_ATM_MORETHAN");};
if (_amount > 0) then {
	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		_bank = player getVariable "bank";
		_cash = player getVariable "cash";
		switch (RPF_ATMType) do {
			case "ATM": {
				hint (localize "STR_RPF_MODULES_ATM_ATMDEPOSIT");
			};
			case "Bank": {
				[_cash, _amount, 0, 1] call ClientModules_ATM_fnc_atmRefresh;
				[_bank, _amount, 1, 0] call ClientModules_ATM_fnc_atmRefresh;
		
				[_amount] call Client_fnc_removeCash;
				[_amount] call Client_fnc_addBank;
			};
		};
	} else {
		hint (localize "STR_RPF_MODULES_ATM_NOTENOUGHCASH");
	};
} else {
	hint (localize "STR_RPF_MODULES_ATM_DEPOSITGTZ");
};