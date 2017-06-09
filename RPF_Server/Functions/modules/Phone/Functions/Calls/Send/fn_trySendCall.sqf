params["_contactNumber", "_player"];

_senderPhone = _player getvariable "phoneNumber";
_receiver = objNull;
{
	if (_contactNumber isEqualTo (_x getvariable "phoneNumber")) exitWith {_receiver = _x;};
} forEach playableUnits;
if (isNull _receiver) then {
	[3] remoteExecCall ["ClientModules_Phone_fnc_failCall", _player]; //wysłanie i przerwanie dzwonienia u gracza 1 do innego który jest offline
} else {
	[_player, _senderPhone] remoteExecCall ["ClientModules_Phone_fnc_sendCall", _receiver]; //wysłanie informacji do gracza 2, który gracz 1 dzwoni
};