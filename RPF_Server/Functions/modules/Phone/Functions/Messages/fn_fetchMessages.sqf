params["_player"];
_playerPhone = _player getvariable "phoneNumber";

_messages = [(format["phone_getMessages:%1", _playerPhone]), 2] call ExternalS_fnc_ExtDBasync;
[_messages] remoteExecCall ["ClientModules_Phone_fnc_receiveMessages", _player];