params ["_tax","_player"];

_updatestr = format ["updateTax:%1", _tax];
_update = [0, _updatestr] call ExternalS_fnc_ExtDBquery;

RPF_Tax = _tax;
format["Podatki zmienione na %1% przez Burmistrza Miasta: %2", _tax, name _player] remoteexec ["hint",-2];

diag_log format["setTax: updated mayor taxes to %1", _tax];