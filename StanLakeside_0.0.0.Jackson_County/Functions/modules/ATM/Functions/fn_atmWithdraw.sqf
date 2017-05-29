/*
Author: Kerkkoh
First Edit: 30.11.2015
*/
_amount = round (parseNumber (ctrlText 1400));
if (_amount > 999999) exitWith {hint (localize "STR_RPF_MODULES_ATM_MORETHAN");};
if (_amount > 0) then {
	_check = [2, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		_bank = player getVariable "bank";
		_cash = player getVariable "cash";
		switch (RPF_ATMType) do {
			case "ATM": {
				if (RPF_canWithdrawAgain) then {
					RPF_canWithdrawAgain = false;

					_time = time + 120;

					if (_amount > 10000) exitWith {hint (localize "STR_RPF_MODULES_ATM_ATMWITHDRAW10K");};

					[_bank, _amount, 0, 0] call ClientModules_ATM_fnc_atmRefresh;
					[_cash, _amount, 1, 1] call ClientModules_ATM_fnc_atmRefresh;
	
					[_amount] call Client_fnc_removeBank;
					[_amount] call Client_fnc_addCash;

					waitUntil {time >= _time};
					RPF_canWithdrawAgain = true;
				} else {
					hint (localize "STR_RPF_MODULES_ATM_ATMLIMITWITHDRAW");
				};
			};
			case "Bank": {
				[_bank, _amount, 0, 0] call ClientModules_ATM_fnc_atmRefresh;
				[_cash, _amount, 1, 1] call ClientModules_ATM_fnc_atmRefresh;
	
				[_amount] call Client_fnc_removeBank;
				[_amount] call Client_fnc_addCash;
			};
		};
	} else {
		hint (localize "STR_RPF_MODULES_ATM_NOTENOUGHBALANCE");
	};
} else {
	hint (localize "STR_RPF_MODULES_ATM_WITHDRAWALGTZ");
};