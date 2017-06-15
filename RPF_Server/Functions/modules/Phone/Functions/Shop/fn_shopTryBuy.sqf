params["_player","_price","_skin","_background","_ringtone"];

_player setVariable ["phoneRing", _ringtone, true];
_player setVariable ["phoneSkin", _skin, true];
_player setVariable ["phoneBackground", _background, true];

_insert = [0, format["phone_confirmShop:%1:%2:%3:%4", _ringtone, _skin, _background, getPlayerUID _player]] call ExternalS_fnc_ExtDBquery;

[_price] remoteExecCall ["ClientModules_Phone_fnc_shopConfirmBuy",_player];