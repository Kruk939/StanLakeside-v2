/*
Author: Kerkkoh
First Edit: 30.11.2015
*/

if (player getVariable ["isDoingATMstuff", false]) exitWith {hint (localize "STR_RPF_MODULES_ATM_WAIT")};
player setVariable ["isDoingATMstuff", true, true];

_amount = round (parseNumber (ctrlText 1400));

if (_amount > 999999) exitWith {hint (localize "STR_RPF_MODULES_ATM_MORETHAN");};
if (_amount > 0) then {
	_check = [2, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		switch (RPF_ATMType) do {
			case "ATM": {
				if (RPF_canWithdrawAgain) then {
					RPF_canWithdrawAgain = false;

					_time = time + 120;

					if (_amount > 10000) exitWith {hint (localize "STR_RPF_MODULES_ATM_ATMWITHDRAW10K");};

					[_amount, 0] call ClientModules_ATM_fnc_atmRefresh;
	
					[player, player getVariable "bankAccount", _amount, 0] remoteExecCall ["ServerModules_fnc_atmReplicateMoney", 2];

					waitUntil {time >= _time};
					RPF_canWithdrawAgain = true;
				} else {
					hint (localize "STR_RPF_MODULES_ATM_ATMLIMITWITHDRAW");
					player setVariable ["isDoingATMstuff", nil, true];
				};
			};
			case "Bank": {
				[_amount, 0] call ClientModules_ATM_fnc_atmRefresh;
	
				[player, player getVariable "bankAccount", _amount, 0] remoteExecCall ["ServerModules_fnc_atmReplicateMoney", 2];
			};
		};
	} else {
		hint (localize "STR_RPF_MODULES_ATM_NOTENOUGHBALANCE");
	};
} else {
	hint (localize "STR_RPF_MODULES_ATM_WITHDRAWALGTZ");
};