params ["_taxMoney"];

mayorBank = mayorBank + _taxMoney;
publicvariable "mayorBank";

 _updatestr = format["updateMayorATM:%1", mayorBank];
 _update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;