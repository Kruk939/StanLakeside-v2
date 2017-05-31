disableSerialization;
_tax = ctrlText 9339;
_tax = call compile format["%1", _tax];
if (_tax > 30) exitWith {hint "Podatek nie może być większy niż 30%!";};

[_tax,player] remoteExec ["ServerModules_Mayor_fnc_setTax",2];