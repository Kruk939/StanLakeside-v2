/*
Author: Kerkkoh
First Edit: 23.12.2016
*/
params["_player"];

_fetch = [(format ["phone_contacts:%1", getPlayerUID _player]), 2] call ExternalS_fnc_ExtDBasync;
[_fetch] remoteExecCall ["ClientModules_Phone_fnc_receiveContacts", _player];

