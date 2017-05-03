disableSerialization;
createDialog "ATMmayor";

_bank = mayorbank; 
_bank = _bank call client_fnc_numberText;
ctrlSetText [1002, _bank];

_cash = player getVariable "cash"; 
_cash = _cash call client_fnc_numberText;
ctrlSetText [1004, _cash];