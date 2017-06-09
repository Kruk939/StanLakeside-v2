params["_contactNumber", "_message", "_player"];

_senderPhone = _player getvariable "phoneNumber";
_receiver = objNull;
{
	if (_contactNumber isEqualTo (_x getvariable "phoneNumber")) exitWith {_receiver = _x;};
} forEach playableUnits;

_update = [0, (format ["phone_insertMessage:%1:%2:%3", _message, _senderPhone, _contactNumber])] call ExternalS_fnc_ExtDBquery; 
if (!isNull _receiver) exitWith{
	[] remoteExecCall ["ClientModules_Phone_fnc_receiveMessage", _receiver];
};
