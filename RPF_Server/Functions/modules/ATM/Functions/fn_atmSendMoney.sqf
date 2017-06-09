/*
Author: Kerkkoh
Last Edit: 6.9.2016
*/
params ["_id", "_amount"];

_fetch = [(format ["atm_playerBankBalance:%1", _id]), 2] call ExternalS_fnc_ExtDBasync;
_playeri = _fetch select 0;
_balance = _playeri select 0;

_newBalance = _balance + _amount;

_insert = [0, (format ["atm_updatePlayerBalance:%1:%2", _newBalance, _id])] call ExternalS_fnc_ExtDBquery;
