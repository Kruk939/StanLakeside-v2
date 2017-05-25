disableSerialization;
private["_arrayNeeded","_user","_arrayCount","_myInjuries","_item"];
_user = _this select 0;
_myInjuries = _this select 1;
_arrayCount = _this select 2;
_item = _this select 3;
player removeMagazine _item;
5 cutText ["","PLAIN"];
_myInjuries set [_arrayCount, 0];
_user setVariable ["medical_playerInjuries",_myInjuries,true];
medical_imHealing = false;
if(_user == player) then {
      _user setVariable ["medical_playerInjuries_toUpdate",_myInjuries];
} else {
      [_user, "medical_playerInjuries_toUpdate", _myInjuries, false] remoteExec ["client_fnc_setVariable",_user];
};
[_user] spawn ClientModules_medical_fnc_medicUpdater;
