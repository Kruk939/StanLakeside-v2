_bankaccount = "";

for "_i" from 0 to 1 step 0 do {
	_bankaccountArr = [121];
	for "_x" from 1 to 12 step 1 do {
		_bankaccountArr pushBack floor (random 10);
	};
	_bankaccount = _bankaccountArr joinString "";

	_q = [0, (format["atm_existBankAccount:%1", _bankaccount])] call ExternalS_fnc_ExtDBquery;

	if (!((_q select 0) select 0)) exitWith {};
};

_bankaccount
