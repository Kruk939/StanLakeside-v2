params ["_finalAccount", "_amount", "_player"];
diag_log _this;
private["_checkstr","_check","_booli","_fetch","_booli","_found","_bankAccount"];
_checkstr = format ["atm_existBankAccount:%1", _finalAccount];
_check = [0, _checkstr] call ExternalS_fnc_ExtDBquery;
_booli = (_check select 0) select 0;
if (_booli) then {
	_found = objNull;
	{
		if ((_x getVariable "bankAccount") == _finalAccount) then {
			_found = _x;
		};
	} forEach allPlayers;
	if (isNull _found) then {
		[_finalAccount, _amount] call ServerModules_fnc_atmSendMoney;
	} else {
		_bankAccount = _found getVariable "bankAccount";
		[_found, _bankAccount, _amount, 1, 0] call Server_fnc_replicateMoney;
		[(localize "STR_RPF_ATM_TRANSFER_RECEIVED")] remoteExecCall ["Client_fnc_hintMP", _found];
	};
	[(localize "STR_RPF_ATM_TRANSFER_COMPLETED")] remoteExecCall ["Client_fnc_hintMP", _player];
} else {
	[(localize "STR_RPF_ATM_TRANSFER_ACCNOTFOUND")] remoteExecCall ["Client_fnc_hintMP", _player];
};

_player setVariable ["isDoingATMstuff", nil, true];
